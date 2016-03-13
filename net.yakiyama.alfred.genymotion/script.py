#!/usr/bin/python
# encoding: utf-8

import sys
import subprocess
import re
import os.path
import string
import time

from workflow import Workflow, web

# State  |   IP Address    |                UUID                |      Name
# --------+-----------------+------------------------------------+---------------
# Process |         0.0.0.0 |50053fc5-c437-413b-b98a-9696a03c9800| Custom Phone - 4.1.1 - API 16 - 768x1280

def main(wf):
    output = subprocess.check_output(["/Applications/Genymotion.app/Contents/MacOS/gmtool", "admin", "list"])

    for line in output.splitlines():
        matches = re.match(r'.*\|.*\|([a-z0-9\-]*)\| (.*)', line, re.M)

        if not matches:
            continue

        uuid = matches.group(1)
        parts = matches.group(2).split(' - ')

        wf.add_item(
            title = parts[0],
            subtitle = ' - '.join(parts[1:]),
            arg = uuid,
            valid = True,
            uid = uuid
        )

    wf.send_feedback()

if __name__ == '__main__':
    wf = Workflow()
    sys.exit(wf.run(main))
