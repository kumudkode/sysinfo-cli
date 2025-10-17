#!/bin/bash
# test_sysinfo.sh - Basic test to verify sysinfo.sh runs successfully

bash ./sysinfo.sh > /dev/null 2>&1

if [ $? -eq 0 ]; then
  echo "✅ sysinfo.sh executed successfully."
  exit 0
else
  echo "❌ sysinfo.sh failed."
  exit 1
fi
