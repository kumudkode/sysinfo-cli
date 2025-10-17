# sysinfo-cli
Goal: A single working shell script that shows system information — CPU, memory, disk, uptime, and network — with clean output.
# 🖥️ sysinfo-cli

A simple shell script that displays your system's information — CPU, memory, disk usage, uptime, and network details — in a clean, readable format.

## 🚀 Usage

```bash
chmod +x sysinfo.sh
./sysinfo.sh

# Or run directly with bash
bash sysinfo.sh
```
## 📋 Feature
- Displays hostname, OS version, kernel version
- Shows CPU model, cores, and usage
- Memory total, used, and free
- Disk usage for root filesystem
- System uptime
- Network interfaces and IP addresses
## 🛠️ Requirement
- Unix-like environment (Linux, macOS, WSL)
- Bash shell
## 🧪 Testing
A basic test script `tests/test_sysinfo.sh` is included to verify that `sysinfo.sh` runs successfully.
Run the test with:
```bash
bash tests/test_sysinfo.sh
```
## 📄 License
MIT License © 2025 KumudKode
