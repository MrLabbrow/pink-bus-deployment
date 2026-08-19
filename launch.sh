#!/bin/bash
set -euo pipefail

# ANSI Color Codes
PINK='\033[38;5;206m'
GREEN='\033[38;5;46m'
RESET='\033[0m'

# Check argument
if [[ $# -ne 1 || "$1" != "--bus-color=pink" ]]; then
    echo -e "${PINK}Error: You must run the script with the '--bus-color=pink' flag.${RESET}" >&2
    echo "Usage: $0 --bus-color=pink" >&2
    exit 1
fi

echo -e "${PINK}Initializing Bangladesh Bus System...${RESET}"
sleep 0.5
echo -e "${PINK}[####################################] 100%${RESET}"
sleep 0.8

# System Checklist
echo -e "✓ Engine ..................... ${GREEN}OK${RESET}"
sleep 0.2
echo -e "✓ Wheels ..................... ${GREEN}OK${RESET}"
sleep 0.2
echo -e "✓ AC System .................. ${GREEN}OK${RESET}"
sleep 0.2
echo -e "✓ WiFi Hotspot ............... ${GREEN}OK${RESET}"
sleep 0.4
echo -e "✓ Pink Color ................. ${PINK}ENABLED 🩷${RESET}"
sleep 0.8

echo ""
echo -e "${PINK}"
cat << "EOF"
      ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
    ▄███████████████████████████████████████████████████████████████████▄
  ▄███████████████████████████████████████████████████████████████████████▄
  ███  ███  ███  ███  ███  ███  ███  ███  ███  ███  ███  ███  ███  ███  ███
  ███  ███  ███  ███  ███  ███  ███  ███  ███  ███  ███  ███  ███  ███  ███
  ███▀▀▀██▀▀▀██▀▀▀██▀▀▀██▀▀▀██▀▀▀██▀▀▀██▀▀▀██▀▀▀██▀▀▀██▀▀▀██▀▀▀██▀▀▀██▀▀▀██
  ███                     ঢাকা ↔ চট্টগ্রাম                     ███
  ███ PINK BUS             🩷 BANGLADESH 🩷              PINK BUS ███
  ███▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄███
  ▀▀▀▀████████████▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀████████████▀▀▀▀▀▀▀▀
      ▀▀██████▀▀                                       ▀▀██████▀▀
         ▀▀▀                                              ▀▀▀
EOF
echo -e "${RESET}"
sleep 0.8

echo -e "${GREEN}STATUS:${RESET} ${PINK}PINK BUS DEPLOYED SUCCESSFULLY! 🚌🩷${RESET}"
sleep 0.5
echo -e "${PINK}Bangladesh has entered the pink era. 🩷${RESET}"
