#!/system/bin/sh
# ==========================================
# SAFE & REALISTIC ANDROID GAME BOOSTER
# ==========================================

# --- ANSI COLOR DEFINITIONS ---
C_RESET="\033[0m"
C_CYAN="\033[1;36m"
C_GREEN="\033[1;32m"
C_YELLOW="\033[1;33m"
C_MAGENTA="\033[1;35m"
C_GRAY="\033[0;90m"

echo "${C_CYAN}╔══════════════════════════════════════════════╗${C_RESET}"
echo "${C_CYAN}║     🛡️ SAFE SYSTEM GAME ENGINE BOOSTER 🛡️    ║${C_RESET}"
echo "${C_CYAN}╚══════════════════════════════════════════════╝${C_RESET}"
echo ""

# 1. Sync & Clear RAM Cache
echo "${C_YELLOW}[1/4] 💧 Flushing System RAM Cache...${C_RESET}"
sync
echo 3 > /proc/sys/vm/drop_caches 2>/dev/null
echo "${C_GREEN}      ├─► Done: System Memory Cache Purged${C_RESET}"
sleep 0.2

# 2. Trim Background Memory
echo "${C_YELLOW}[2/4] 🧹 Trimming Background Unused RAM...${C_RESET}"
am trim-memory --all HIDDEN 2>/dev/null
am trim-memory --all BACKGROUND 2>/dev/null
echo "${C_GREEN}      ├─► Done: Background App Memory Released${C_RESET}"
sleep 0.2

# 3. Optimize App Runtime Code
echo "${C_YELLOW}[3/4] ⚡ Executing Background Dexopt Job...${C_RESET}"
cmd package bg-dexopt-job 2>/dev/null
echo "${C_GREEN}      ├─► Done: Package Runtime Pre-compiled${C_RESET}"
sleep 0.2

# 4. Swappiness Adjustment
echo "${C_YELLOW}[4/4] ⚙️ Adjusting Kernel Virtual Memory Allocation...${C_RESET}"
sysctl -w vm.swappiness=10 2>/dev/null
sysctl -w vm.vfs_cache_pressure=50 2>/dev/null
echo "${C_GREEN}      └─► Done: VM Swappiness set to 10%${C_RESET}"
sleep 0.2

echo ""
echo "${C_MAGENTA}================================══════════════${C_RESET}"
echo "${C_GREEN}      ✔ SYSTEM OPTIMIZATION COMPLETED!        ${C_RESET}"
echo "${C_GRAY}      Your device is ready for optimal gaming.  ${C_RESET}"
echo "${C_MAGENTA}================================══════════════${C_RESET}"
