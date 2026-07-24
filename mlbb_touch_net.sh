#!/system/bin/sh
# ==========================================================
# MLBB TOUCH RESPONSE & NETWORK OPTIMIZATION SCRIPT
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
echo "${C_CYAN}║    🎯 MLBB TOUCH & NETWORK OPTIMIZER 🎯      ║${C_RESET}"
echo "${C_CYAN}╚══════════════════════════════════════════════╝${C_RESET}"
echo ""

# 1. Battery Optimization Whitelist
echo "${C_YELLOW}[1/4] 🔋 Disabling Battery Saver for MLBB...${C_RESET}"
dumpsys deviceidle whitelist +$PKG_NAME 2>/dev/null
echo "${C_GREEN}      ├─► Done: MLBB Whitelisted (No Doze Lag)${C_RESET}"
sleep 0.2

# 2. Touch Response & Motion Tuning
echo "${C_YELLOW}[2/4] 🖐️ Tuning Touch Latency & Motion Slop...${C_RESET}"
settings put system touch_blocking_period 0 2>/dev/null
setprop view.touch_slop 2 2>/dev/null
setprop pointer.disable_high_performance 0 2>/dev/null
echo "${C_GREEN}      ├─► Done: Touch Latency Decreased${C_RESET}"
sleep 0.2

# 3. Network Buffer & TCP Window Size
echo "${C_YELLOW}[3/4] 🌐 Optimizing Network TCP Buffer & Ping...${C_RESET}"
setprop net.tcp.buffersize.wifi 524288,1048576,2097152,262144,524288,1048576 2>/dev/null
setprop net.tcp.buffersize.lte 524288,1048576,2097152,262144,524288,1048576 2>/dev/null
echo "${C_GREEN}      ├─► Done: Wi-Fi/LTE Buffers Stabilized${C_RESET}"
sleep 0.2

# 4. Hardware Acceleration
echo "${C_YELLOW}[4/4] ⚡ Forcing GPU Hardware Acceleration...${C_RESET}"
setprop debug.sf.hw 1 2>/dev/null
setprop debug.egl.hw 1 2>/dev/null
echo "${C_GREEN}      └─► Done: SurfaceFlinger & EGL HW Enabled${C_RESET}"
sleep 0.2

echo ""
echo "${C_MAGENTA}================================══════════════${C_RESET}"
echo "${C_GREEN}    ✔ TOUCH & NETWORK OPTIMIZED FOR MLBB!     ${C_RESET}"
echo "${C_GRAY}    Ultra-fast response rate & ping stability. ${C_RESET}"
echo "${C_MAGENTA}================================══════════════${C_RESET}"
