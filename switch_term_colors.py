#! /bin/python
from typing import Literal
import os
from subprocess import run
import sys

HOME = run(" ".join(["echo", "$HOME"]), shell=True, capture_output=True).stdout.decode('utf-8')[:-1] 

def main(mode: Literal["day", "night"] = "night"):
    # locations
    #   Day:
    #       -> Set ghostty and nvim to dawnfox theme
    #   Night:
    #       -> Set ghostty to terafox and nvim to nordfox theme
    data = {
        "ghostty": {
            "path": f"{HOME}/.config/ghostty/config",
            "line": "theme = %option%"
        },
        "nvim": {
            "path": f"{HOME}/.config/nvim/init.lua",
            "line": 'vim.cmd.colorscheme("%option%")',
        },
    }

    modes = {
        "day": {"ghostty": "dawnfox", "nvim": "dawnfox"},
        "night": {"ghostty": "terafox", "nvim": "nightfox"},
    }

    

    for key in data:
        path, line = data[key]["path"], data[key]["line"]
        with open(path, "r+") as file:
            lines = file.readlines()
            len_ll = len(lines[-1])
            ll = line.replace("%option%", modes[mode][key])
            if (dchar := len_ll-len(ll)) > 0:
                ll += " "*dchar # Not optimal hack 
            lines[-1] = ll
            file.seek(0, os.SEEK_SET)
            file.writelines(lines)

    sys.exit()


if __name__ == "__main__":
    if len(sys.argv) == 1:
        main(mode = "night")
    elif len(sys.argv) == 2:
        if sys.argv[-1] in ('day', 'night'):
            main(mode=sys.argv[-1])

    raise RuntimeError("You have provided invalid number of args")
