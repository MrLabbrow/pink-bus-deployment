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

# Save bus art to a variable
IFS='' read -r -d '' bus_art << "EOF" || true
           .--------------.                            ---------------.                             
     ......................................................................................         
     ...::::::::::-::::::::::::::-..........-:::::::::::::::::::::::-..........-:::::::::-::.:      
     .............+..............*:.......:.#.............:.........+:....=..:.+         =    -     
     ....         +             .*:  ...  ..#                       +:  ..=  ..+         =    +     
     ....         +             .*:  ...  ..#                       +:  ..=  ..+         =    :     
     ....         +             .*:  ...  ..#                       +:  ..=  ..+         =          
     ...:   .*    + .+      .=  .*:  ...  ..# *.      #.      *     +:  ..=  ..+ .+      =          
     ....:. .*    + .*      .*  .*:  ...  ..# *:      #.      *.    +:  ..=  ..+ .*     ==-**.      
     ......++*++++*++*+++++++*++++:  ...  ..*+*+++++++++++++++*+++++=:  ..=  ..*++*+++++*+***.      
     ......... PINK BUS .........-::::..:::... DHAKA <-> BOGURA ....:::::.=::-................      
     ..-====:............::......-:  ...  ................::........::  ..=  .................      
     ..:::::.....=++=............-..........................:=*+=...:..............=*+=.....+.      
     ..........=#....#=..........-.........................=+....#:.:............=*....*-.....      
            ...#..##.:#------------------------------------#.:#*.:#--------------#..##.:#---:       
               =*....#-                                    =+...:#               -*....*:           
                 :++:                                        -++:                  -++:             
EOF

echo ""
echo -e "${PINK}"
echo "$bus_art"
echo -e "${RESET}"
sleep 0.8

echo -e "${GREEN}STATUS:${RESET} ${PINK}PINK BUS DEPLOYED SUCCESSFULLY! 🚌🩷${RESET}"
echo -e "${PINK}Bangladesh has entered the pink era. 🩷${RESET}"
echo ""

# Prompt to start engine
read -p "Start the bus engine and leave the terminal? [Y/n] " confirm
if [[ "$confirm" =~ ^[Nn] ]]; then
    exit 0
fi

# Determine terminal width dynamically and robustly
term_width=$(tput cols < /dev/tty 2>/dev/null)
if [[ -z "$term_width" || "$term_width" -le 0 ]]; then
    term_width=$(stty size < /dev/tty 2>/dev/null | awk '{print $2}')
fi
if [[ -z "$term_width" || "$term_width" -le 0 ]]; then
    term_width=${COLUMNS:-120} # Fallback to 120 if everything else fails
fi

# Hide cursor
tput civis 2>/dev/null || true

# Animate moving forward until it completely disappears
for (( i=0; i<=term_width+2; i+=2 )); do
    clear
    echo -e "${GREEN}STATUS:${RESET} ${PINK}PINK BUS IS ON THE MOVE! 🚌💨🩷${RESET}"
    echo ""
    echo -e "${PINK}"
    
    pad=$(printf '%*s' "$i" '')
    while IFS= read -r line; do
        padded="${pad}${line}"
        # Trim to terminal width to avoid wrapping
        echo "${padded:0:$term_width}"
    done <<< "$bus_art"
    
    echo -e "${RESET}"
    sleep 0.04
done

# Show cursor again
tput cnorm 2>/dev/null || true
clear
echo -e "${PINK}The bus has left the terminal! Have a safe journey! 🚌💨🩷${RESET}"
