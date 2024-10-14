# geometry is based off of 2560x1440 screen

gnome-terminal --geometry=46x1+0+0 -t "hardware osd" -- ~/.hw-osd/watchosd.sh
xprop -name 'hardware osd' -f _MOTIF_WM_HINTS 32c -set _MOTIF_WM_HINTS "0x2, 0x0, 0x2, 0x0, 0x0"
