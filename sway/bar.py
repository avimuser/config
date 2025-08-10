#!/usr/bin/env python3

import json
import time
from datetime import datetime

FG = "#ECE1D7"
RED = "#BD8183"
GREEN = "#78997A"
YELLOW = "#E49B5D"

BATTERY = "BAT0"


def wrap_in_block(text, color=FG):
    return {
        "full_text": text,
        "color": color,
        "separator": False,
        "separator_block_width": 20,
    }


def time_block():
    time_str = datetime.now().strftime("%I:%M %p")
    return wrap_in_block(time_str, FG)


def date_block():
    date_str = datetime.now().strftime("%d %b %y")
    return wrap_in_block(date_str, FG)


def read_first_line(path):
    try:
        return open(path).readline().strip()
    except Exception:
        return None


def battery_block():
    path = f"/sys/class/power_supply/{BATTERY}"
    percent = read_first_line(path + "/capacity")
    status = read_first_line(path + "/status")

    if percent is None or status is None:
        return wrap_in_block("No battery", RED)

    color = FG
    p = int(percent)
    if status in ("Charging", "Not charging", "Full"):
        color = GREEN
    elif status == "Discharging":
        if p <= 20:
            color = RED
        elif p <= 30:
            color = YELLOW

    battery_text = f"{percent}%"
    return wrap_in_block(battery_text, color)


def main():
    print(json.dumps({"version": 1}))
    print("[")
    try:
        while True:
            blocks = [date_block(), time_block(), battery_block()]
            print(json.dumps(blocks), flush=True)
            print(",", flush=True)
            time.sleep(1)
    except KeyboardInterrupt:
        print("")


if __name__ == "__main__":
    main()
