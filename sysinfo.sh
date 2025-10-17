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

#for-color-output
#!/bin/bash
# sysinfo.sh - Display basic system information (with color output)

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[1;34m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color
echo -e "${BLUE}<<=== ========= =========  ========= ========= ========= ===>> ${NC}"
echo -e "${BLUE}===== System Information =====${NC}"
echo -e "${CYAN}Hostname:${NC} ${YELLOW}$(hostname)${NC}"
echo -e "${CYAN}Operating System:${NC} ${YELLOW}$(uname -o)${NC}"
echo -e "${CYAN}Kernel:${NC} ${YELLOW}$(uname -r)${NC}"
echo -e "${CYAN}Uptime:${NC} ${YELLOW}$(uptime -p)${NC}"
echo -e "${CYAN}Current User:${NC} ${YELLOW}$USER${NC}"

echo
echo -e "${BLUE}===== CPU Information =====${NC}"
lscpu | grep 'Model name' | sed "s/Model name:/${GREEN}Model name:${NC}/"

echo
echo -e "${BLUE}===== Memory Usage =====${NC}"
free -h | awk 'NR==1 || NR==2 {print $0}' | sed "s/^/${YELLOW}/; s/$/${NC}/"

echo
echo -e "${BLUE}===== Disk Usage =====${NC}"
df -h --total | grep total | sed "s/^/${YELLOW}/; s/$/${NC}/"

echo
echo -e "${BLUE}===== Network Info =====${NC}"
ip -4 addr show | grep inet | awk '{print $2}' | sed "s/^/${YELLOW}/; s/$/${NC}/"
# End of script