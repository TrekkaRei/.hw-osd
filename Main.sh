# geometry is based off of 2560x1440 screen

gnome-terminal --geometry=44x1+2158+15 -t "hardware osd" -- ~/.hw-osd/watchosd.sh
xprop -name 'hardware osd' -f _MOTIF_WM_HINTS 32c -set _MOTIF_WM_HINTS "0x2, 0x0, 0x2, 0x0, 0x0"
