#!/usr/bin/env python3
import subprocess
import json
import sys

if len(sys.argv) > 1 and sys.argv[1] == '--list':
    vms = []
    r = subprocess.run(['multipass', 'list', '--format', 'csv'], capture_output=True, text=True)
    for line in r.stdout.splitlines()[1:]:  # Skip CSV header
        columns = [col.strip().strip('"') for col in line.split(',')]
        # columns example: [Name, State, IPv4, ...]
        if len(columns) >= 3 and columns[1] == 'Running':
            vms.append(columns[2])  # Append IPv4 address
    inventory = {
        "all": {
            "hosts": vms,
            "vars": {"ansible_user": "ubuntu"}
        },
        "multipass_vms": {
            "hosts": vms
        }
    }
    print(json.dumps(inventory))
else:
    print(json.dumps({}))

