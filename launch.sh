#!/bin/bash
set -euo pipefail

# ANSI Color Codes
PINK='\033[38;5;206m'
GREEN='\033[38;5;46m'
RESET='\033[0m'

# No argument needed since it's inherently a pink bus!

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
