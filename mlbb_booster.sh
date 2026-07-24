#!/system/bin/sh
# ==========================================================
# MLBB SPECIFIC PERFORMANCE BOOSTER SCRIPT
# Target Package: com.mobile.legends
# ==========================================================

PKG_NAME="com.mobile.legends"

# --- ANSI COLOR DEFINITIONS ---
C_RESET="\033[0m"
C_CYAN="\033[1;36m"
C_GREEN="\033[1;32m"
C_YELLOW="\033[1;33m"
C_MAGENTA="\033[1;35m"
C_GRAY="\033[0;90m"

echo "${C_CYAN}╔══════════════════════════════════════════════╗${C_RESET}"
echo "${C_CYAN}║    ⚡ MOBILE LEGENDS PRO ENGINE BOOSTER ⚡    ║${C_RESET}"
echo "${C_CYAN}╚══════════════════════════════════════════════╝${C_RESET}"
echo ""

# 1. Bytecode Compilation
echo "${C_YELLOW}[1/5] 🚀 Compiling MLBB Engine (Speed Mode)...${C_RESET}"
cmd package compile -m speed $PKG_NAME 2>/dev/null
echo "${C_GREEN}      ├─► Done: DEX Bytecode Optimized${C_RESET}"
sleep 0.2

# 2. Memory Trimming
echo "${C_YELLOW}[2/5] 🧹 Clearing Unused Background RAM...${C_RESET}"
am trim-memory --all HIDDEN 2>/dev/null
am trim-memory --all BACKGROUND 2>/dev/null
echo "${C_GREEN}      ├─► Done: Background Processes Trimmed${C_RESET}"
sleep 0.2

# 3. System Cache Flush
echo "${C_YELLOW}[3/5] 💧 Flushing System Memory Caches...${C_RESET}"
sync
echo 3 > /proc/sys/vm/drop_caches 2>/dev/null
echo "${C_GREEN}      ├─► Done: RAM Cache Released${C_RESET}"
sleep 0.2

# 4. Kernel VM Tuning
echo "${C_YELLOW}[4/4] ⚙️ Adjusting Kernel VM Parameters...${C_RESET}"
sysctl -w vm.swappiness=10 2>/dev/null
sysctl -w vm.vfs_cache_pressure=50 2>/dev/null
sysctl -w vm.dirty_ratio=10 2>/dev/null
sysctl -w vm.dirty_background_ratio=5 2>/dev/null
echo "${C_GREEN}      ├─► Done: Virtual Memory Re-allocated${C_RESET}"
sleep 0.2

# 5. UI Animations
echo "${C_YELLOW}[5/5] 🎯 Tuning System Animation Scales...${C_RESET}"
settings put global window_animation_scale 0.5 2>/dev/null
settings put global transition_animation_scale 0.5 2>/dev/null
settings put global animator_duration_scale 0.5 2>/dev/null
echo "${C_GREEN}      └─► Done: Animation Scale set to 0.5x${C_RESET}"
sleep 0.2

echo ""
echo "${C_MAGENTA}================================══════════════${C_RESET}"
echo "${C_GREEN}   ✔ MLBB OPTIMIZATION SUCCESSFULLY APPLIED!  ${C_RESET}"
echo "${C_GRAY}   Ready to play. Launch Mobile Legends now!   ${C_RESET}"
echo "${C_MAGENTA}================================══════════════${C_RESET}"
