#!/bin/bash
cd Path to your driver
sudo -S rm -rf /tmp/*.kext << EOF
yourPWD
EOF
sudo cp -r *.kext /tmp
sudo chown -R root:wheel /tmp/*.kext
sudo kextutil /tmp/*.kext

