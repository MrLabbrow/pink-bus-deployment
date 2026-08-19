#!/bin/bash
set -euo pipefail

# ANSI Color Codes
PINK='\033[38;5;206m'
GREEN='\033[38;5;46m'
YELLOW='\033[38;5;226m'
RESET='\033[0m'

# No argument needed since it's inherently a pink bus!

echo -e "${PINK}Initializing Bangladesh Bus System...${RESET}"
tput civis 2>/dev/null || true # Hide cursor
bar=""
for i in {1..36}; do
    bar+="#"
    pct=$(( i * 100 / 36 ))
    printf "\r${PINK}[%-36s] %3d%%${RESET}" "$bar" "$pct"
    sleep 0.04
done
echo ""
tput cnorm 2>/dev/null || true
sleep 0.5

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

# Save bus art frames to variables
IFS='' read -r -d '' bus_art_1 << "EOF" || true
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

IFS='' read -r -d '' bus_art_2 << "EOF" || true
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
               =.*..#.-                                    =.*..#.-              =.*..#.-           
                 :xx:                                        -xx:                  -xx:             
EOF

echo ""
echo -e "${PINK}"
echo "$bus_art_1"
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

# Prevent terminal auto-wrap from breaking the ASCII art lines
((term_width--))
if (( term_width < 40 )); then term_width=40; fi

# Hide cursor
tput civis 2>/dev/null || true

gate_art=(
"      ||   ||      "
"      ||   ||      "
"      ||   ||      "
"      ||   ||      "
"      ||   ||      "
"      ||   ||      "
"      ||   ||      "
"      ||   ||      "
"      ||   ||      "
"      ||   ||      "
"      ||   ||      "
"      ||   ||      "
"      ||   ||      "
"      ||   ||      "
"      ||   ||      "
"      ||   ||      "
"     /||===||\\     "
)

bus_width=100

# Animate moving forward from offscreen left to offscreen right through the gate
for (( pos=-bus_width; pos<=term_width; pos+=2 )); do
    clear
    echo -e "${GREEN}STATUS:${RESET} ${PINK}PINK BUS IS ON THE MOVE! 🚌💨🩷${RESET}"
    echo ""
    
    # Print the roof of the toll gate right-aligned
    printf "${YELLOW}%*s${RESET}\n" "$term_width" "[=================]"
    printf "${YELLOW}%*s${RESET}\n" "$term_width" "[    TOLL EXIT    ]"
    printf "${YELLOW}%*s${RESET}\n" "$term_width" "[=================]"
    
    echo -ne "${PINK}"
    
    # Spin the wheels by alternating frames
    frame=$(( (pos / 2) % 2 ))
    if (( frame == 0 || frame == -0 )); then
        current_art="$bus_art_1"
    else
        current_art="$bus_art_2"
    fi
    
    line_idx=0
    while IFS= read -r line; do
        # Ensure line is 100 characters padded
        padded_line=$(printf '%-100s' "$line")
        gate="${gate_art[$line_idx]:-                   }"
        
        # Calculate how much of the bus is visible (terminal width - gate width)
        vis_width=$((term_width - 19))
        if (( vis_width < 10 )); then vis_width=10; fi # Safety fallback
        
        if (( pos < 0 )); then
            skip=$(( -pos ))
            visible="${padded_line:$skip:$vis_width}"
        else
            pad=$(printf '%*s' "$pos" '')
            padded="${pad}${padded_line}"
            visible="${padded:0:$vis_width}"
        fi
        
        # Pad visible with spaces so it exactly matches vis_width and gate aligns perfectly
        visible=$(printf "%-${vis_width}s" "$visible")
        # Ensure we don't accidentally exceed vis_width 
        visible="${visible:0:$vis_width}"
        
        # Print the bus layer followed by the gate layer
        echo -e "${visible}${YELLOW}${gate}${PINK}"
        ((line_idx++))
    done <<< "$current_art"
    
    # Draw a solid road underneath the bus and gate
    road=$(printf "%${term_width}s" | tr ' ' '=')
    echo -e "${RESET}${road}"
    
    sleep 0.04
done

# Show cursor again
tput cnorm 2>/dev/null || true
clear
echo -e "${PINK}The bus has left the terminal! Have a safe journey! 🚌💨🩷${RESET}"
