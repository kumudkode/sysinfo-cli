# sysinfo.sh - Display basic system information
# You can run this script in a Unix-like environment with bash shell.
#!/bin/bash
# These comments describe the purpose of the script.
# If you wanna run script in terminal, use command: bash sysinfo.sh or chmod +x sysinfo.sh && ./sysinfo.sh in wsl-Ubuntu/Linux/MacOS


echo "===== System Information ====="
echo "Hostname: $(hostname)"
echo "Operating System: $(uname -o)"
echo "Kernel: $(uname -r)"
echo "Uptime: $(uptime -p)"
echo "Current User: $USER"

echo
echo "===== CPU Information ====="
lscpu | grep 'Model name'

echo
echo "===== Memory Usage ====="
free -h | awk 'NR==1 || NR==2 {print $0}'

echo
echo "===== Disk Usage ====="
df -h --total | grep total

echo
echo "===== Network Info ====="
ip -4 addr show | grep inet | awk '{print $2}'

