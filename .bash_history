drcrun 
pactl 
pacmd
htop
git clone https://github.com/randomthought/xmonad-config.git .xmonad
pactl set-sink-volume @DEFAULT_SINK@ +4%; paplay /usr/share/sounds/freedesktop/stereo/audio-volume-change.oga
q
rofi-asd 
rofi
rofi -show
q
rofi-choice 
echo -e "Option #1\nOption #2\nOption #3" | rofi -dmenu
rofi-choice 
rofi -combi-modi window,drun -show combi -modi combi
q
tin networkmanager-dmenu
rofi -dmenu
rofi
rofi -show windowcd
rofi -show
tin oomox-git
q
sakura
rofi -dmenu
rofi -show windowcd
tin oomox-git
q
rofi
tin obconf
tin obmenu
tin obapps
tin obkey
rofi -show
obkey
thunar
obmenu
obkey
htop
xrandr --output LVDS-1 --auto --output VGA-1 --off --output HDMI-1 --off
htop
q
systemctl status polkit.service
q
sudo pam-auth-update --force
/usr/lib/xfce-polkit/xfce-polkit
https://github.com/ncopa/xfce-polkit.git
git clone https://github.com/ncopa/xfce-polkit.git
cd ./xfce-polkit/
su
reboot
tun xmonad
q
fpu_full-pacman-upgrade 
q
htop
q
q
c
neofetch 
htop
q
git clone https://github.com/addy-dclxvi/tint2-theme-collections ~/.config/tint2 --depth 1
tin tint2
tint2 -c ~/.config/tint2/unleashed/unleashed-taskbar.tint2rc 
tint2 && q
tint2 -c ~/.config/tint2/unleashed/unleashed-clock.tint2rc &
tint2 -c ~/.config/tint2/unleashed/unleashed-bookmark.tint2rc 
tint2 -c ~/.config/tint2/unleashed/unleashed-workspace.tint2rc &
tint2 -c ~/.config/tint2/unleashed/unleashed-taskbar.tint2rc &
tint2 -c ~/.config/tint2/unleashed/unleashed-statusbar.tint2rc &
tint2 &
tint2 &
q
killall tint2
tint2 &
tun tint2
neofetch 
tun cmake
q
tun xterm
q
gtk-update-icon-cache 
q
tin scrot
q
tin polybar
q
./launch.sh 
q
polybar
polybar main
q
polybar
./launch.sh 
polybar -c master
polybar master
polybar main
rofiexit 
rofi-choice 
wget -q "http://hup.hu/node/97489" -O - | sed "s/<pre class=\"bb-code-block\">/<pre class=\"bb-code-block\">################/g" | perl -E 'my $_ = do { local $/; <> }; say join qq!\n!, m!\Q<pre class="bb-code-block">\E\K(.*?)(?=\Q</pre>\E)!gs' | sed "s/&lt;/</g" | sed "s/&gt;/>/g" | sed "s/&amp;/\&/g"
q
tun
tup
q
tup
reboot
tun lutris winetricks wine
tun lutris winetricks wine-staging
q
polybar
./launch.sh 
polybar --reload main -c ~/.config/polybar/config
./launch.sh 
polybar --reload xfce4 -c ~/.config/polybar/config
polybar --reload xfce4 -c ~/.config/polybar/config
echo $DESKTOP_SESSION
./launch.sh 
./launch.sh 
polybar --reload xfce4 -c ~/.config/polybar/config
polybar --reload xfce4 -c ~/.config/polybar/config
xfdesktop --help
./launch.sh 
q
xfdesktop -e
xfdesktop -d
xfdesktop -A
xfdesktop --help-all
killall polybar
q
su
q
fatlabel /dev/sdc2 "KDE Neon"
sudo fatlabel /dev/sdc2 "KDE Neon"
q
sudo parted /dev/sdc2 set 1 boot on
sudo parted /dev/sdc set 1 boot on
q
dd if=/dev/sdc2 of=casper-wm bs=1M count=mkfs.ext4 -m 0 casper-wm
dd if=/dev/sdc2 of=casper-wm bs=1M count=mkfs.ext4 0 casper-wm
grub-mkimage -o bootx64.efi -p /efi/boot -O x86_64-efi  fat iso9660 part_gpt part_msdos  normal boot linux configfile loopback chain  efifwsetup efi_gop efi_uga  ls search search_label search_fs_uuid search_fs_file  gfxterm gfxterm_background gfxterm_menu test all_video loadenv  exfat ext2 ntfs btrfs hfsplus udf
sudo parted /dev/sdc set 1 boot on
sudo dd if=/dev/zero of=casper-rw bs=1M count=4094
mkfs.ext4 -m 0 casper-rw
q
sudo dd if=/dev/sdc of=casper-rw bs=1M count=4094
su
q
wget http://cznic.dl.osdn.jp/storage/g/m/ma/manjaro/gnome/18.0.4/manjaro-gnome-18.0.4-stable-x86_64.iso
tin plank xcompmgr
xcompmgr 
htop
killall gvfs
killall gvfs*
q
tun gvfs
q
tun gvfs
amixer set Master 5%-
amixer set Master 5%+
q
pactl set-sink-volume 0 +2%
pactl
pactl --help
pactl ser 1
xset b 55
xset b 100
amixer ser 125%
amixer set 125%
amixer set Master 125%
pactl set-sink-volume 0 120%
pactl set-sink-volume 0 20%
pactl set-sink-volume 0 100%
pactl set-sink-volume 0 toggle
pactl set-sink-volume 0 mute
pactl set-sink-volume 0 
pactl set-sink-volume 0 --help
pactl set-sink-volume 0 0
pactl set-sink-volume 0 100
pactl set-sink-volume 0 100%
amixer -D pulse set Master 1+ toggle
q
localectl list-keymaps
setxkbmap -print
setxkbmap --help
setxkbmap -h
q
xkblayout-state print "Current layout: %s(%e)"
setxkbmap -print | awk -F"+" '/xkb_symbols/ {print $2}



q
exit
setxkbmap -print | awk -F"+" '/xkb_symbols/ {print $2}'
q
setxkbmap -print | awk -F"+" '/xkb_symbols/ {print $2}'
q
localectl status
setxkbmap -print | grep xkb_symbols
setxkbmap -print
q
setxkbmap
setxkbmap -query |grep variant|cut -d ' ' -f 5
setxkbmap -query |grep layout|cut -d ' ' -f 5
setxkbmap -query
setxkbmap -query | grep layout
setxkbmap -print | grep xkb_symbols | awk '{print $4}' | awk -F"+" '{print $2}'
git clone https://aur.archlinux.org/plank-theme-numix.git
q
killall plank
plank
fpu_full-pacman-upgrade 
neofetch 
q
xbacklight set 5
xbacklight -set 5
xbacklight -set 15
q
drcexit
q
speedtest-cli 
q
killall conky
fc-list | grep Awesome
fc-cache -vf ~/.local/share/fonts/
sudo rm /etc/fonts/conf.d/70-no-bitmaps.conf && fc-cache
./launch.sh 
killall polybar
q
pavucontrol 
pavucontrol --help
pavucontrol --help-all
pavucontrol -set
pavucontrol set
pavucontrol -set
pavucontrol set
xbacklight set 5
xbacklight -set 5
xbacklight -set 15
echo -e "first\nsecond\nthird" | dmenu
dmenu -fn "$DMENU_FN" -nb "$DMENU_NB" -nf "$DMENU_NF" -sb "$DMENU_SB" -sf "$DMENU_SF"  -p "$1" <&- && echo
dmenu -fn -p "ASD" <&- && echo
dmenu -p "ASD" <&- && echo
dmenu -p "ASD" <&- && xbacklight -set
xbacklight -set <&- && dmenu -p "ASD"
dmenu -p "ASD" $1 <&- && xbacklight -set $1
drcpass asd
drcbacklight 
drcbacklight asd 22
drcbacklight
drcbacklight 
dmenu -p "ASD" $1 <&- && xbacklight -set $1
drcpass asd
drcbacklight asd 22
dmenu_path
dmenu_path xbacklight
dmenu -p "asd" <&- && echo | xbacklight -set
dmenu -p "asd" <&- && xbacklight -set | echo
dmenu -p "asd" <&- && xbacklight -set | print
dmenu -p "asd" <&- $ xbacklight -set
dmenu -p "asd" <&- $$ xbacklight -set
dmenu -p "asd" <&- & xbacklight -set
dmenu -p "asd" <xbacklight -set
dmenu -p "asd" <-xbacklight -set
dmenu -p "asd" <&-xbacklight -set
dmenu -p "asd" <&- xbacklight -set
dmenu -p "asd" <&- && xbacklight -set
dmenu -p "asd" <&- && xbacklight -set 15
xbacklight -set | dmenu
xbacklight -set = dmenu
xbacklight -set == dmenu
drcbacklight 
drcbacklight
q
drcpactl 
xbacklight +2
q
pavucontrol 33
alsamixer --help
alsamixer -c 55
q
kitty --help
q
lq
q
tup
q
htop
neofetch 
q
io.elementary.terminal --help
io.elementary.terminal -h
q
q
htop
c
neofetch 
./launch.sh 
q
./launch.sh 
q
neofetch 
q
drc
q
printf("%*s\n", strlen(s) + (80 - strlen(s)) / 2, s)
int columns = strtol(getenv("COLUMNS"), NULL, 10);
Console.WriteLine("                  Hello World");
Console.WriteLine("                  Hello World")
tput cup $((LINES-2)) $((COLUMNS-4));echo "[OK]"
tput cup line column
tput cup $((LINES-2)) $((COLUMNS-4));echo "##############"
tput cup $((LINES-1)) $((COLUMNS-1));echo "##############"
tput cup $((LINES-3)) $((COLUMNS-1));echo "##############"
tput cup $((LINES-3)) $((COLUMNS-4));echo "##############"
tput cup $((LINES-9)) $((COLUMNS-4));echo "##############"
c
echo -e "${YELLOW}Network check${NC}\n\n"
awk '{ z = '$(tput cols)' - length; y = int(z / 2); x = z - y; printf "%*s%s%*s\n", x, "", $0, y, ""; }'
awk '{ z = '$(tput cols)' - length; y = int(z / 2); x = z - y; printf "%*s%s%*s\n", x, "", $0, y, ""; }' && Helo && q
fpu_full-pacman-upgrade 
awk '{ z = '$(tput cols)' - length; y = int(z / 2); x = z - y; printf "%*s%s%*s\n", x, "", $0, y, "asd"; }'
awk '{ z = '$(tput cols)' - length; y = int(z / 2); x = z - y; printf "%*s%s%*s\n", x, "", $0, y, ""; }' asd &
awk '{ z = '$(tput cols)' - length; y = int(z / 2); x = z - y; printf "%*s%s%*s\n", x, "asd", $0, y, ""; }' &
awk '{ z = '$(tput cols)' - length; y = int(z / 2); x = z - y; printf "%*s%s%*s\n", x, "asd", $0, y, "asd"; }' &
awk '{ z = '$(tput cols)' - length; y = int(z / 2); x = z - y; printf "%*s%s%*s\n", x, "", $0, y, ""; }' &
q
awk '{ z = '$(tput cols)' - length; y = int(z / 2); x = z - y; printf "%*s%s%*s\n", x, "", $0, y, ""; }' &
awk '{ z = '$(tput cols)' - length; y = int(z / 2); x = z - y; printf "%*s%s%*s\n", x, "", $0, y, ""; }' && q
./drcbacklight 
q
./drcpactl 
drcbacklight 
dmenu.sh 
q
drcbacklight 
q
xbacklight -h
pactl set-sink-volume 0 +1
polybar-msg cmd hide
polybar-msg cmd show
./launch.sh 
neofetch 
htop
./launch.sh 
./toggle.sh 
q
fpu
fpu_full-pacman-upgrade 
neofetch 
q
killall xfsettinsd
killall xfsettingsd
xsettingsd 
htop
pavucontrol 
curl -O https://download.sublimetext.com/sublimehq-pub.gpg && sudo pacman-key --add sublimehq-pub.gpg && sudo pacman-key --lsign-key 8A8F901A && rm sublimehq-pub.gpg
echo -e "\n[sublime-text]\nServer = https://download.sublimetext.com/arch/stable/x86_64" | sudo tee -a /etc/pacman.conf
sudo pacman -Syu sublime-text
wget https://liquidtelecom.dl.sourceforge.net/project/arcolinux-community-editions/i3/arcolinuxb-i3-v19.07.9.iso
wget http://cznic.dl.osdn.jp/storage/g/m/ma/manjaro-community/i3/18.0.4/manjaro-i3-18.0.4-stable-x86_64.iso
q
st
htop
neofetch 
q
123
q
neofetch 
q
wget http://ftp.sh.cvut.cz/slax/Slax-9.x/slax-64bit-9.9.1.iso
https://kelaino.bunsenlabs.org/ddl/helium-5-amd64.hybrid.iso
wget https://kelaino.bunsenlabs.org/ddl/helium-5-amd64.hybrid.iso
wget https://netcologne.dl.sourceforge.net/project/archlabs-linux-minimo/ArchLabsMinimo/archlabs-2019.01.20.iso
htop
tin termite termite-terminfo
q
conky
xcompmgr 
plank
sudo ln -s ~/.config/gtk-2.0 /etc/gtk-2.0
sudo ln -s ~/.config/gtk-3.0 /etc/gtk-3.0
ln -s ~/.config/gtk-2.0/gtkrc ~/.gtkrc-2.0
tup
q
plank
reboot
htop
reboot
./launch.sh 
htop
./launch.sh 
obapps
obmenu
neofetch 
dmenu -b -f -i -l 10 -fn "Migu 1M:size=13"
rofi
hl
htop
hc quit
herbstluftwm quite
herbstluftwm quit
herbstluftwm close
conky
reboot
execi 360 acpi -V | grep Discharging | cut -d " " -f 4-5 | head -n 1 | sed s/,//
pulseaudio-ctl up
q
hsetroot
notify-send 'brightness up'
q
notify-send 'brightness up


q
q
xcompmgr &
q
killall plank
q
pactl
alsamixer 
pulseaudio
killall i3status 
killall i3bar
i3lock 
i3-dmenu-desktop 
i3-input 
i3 -h
reboot
q
htop
i3 logout
i3-logout
i3logout
i3exit
i3 exit
i3 exit
fpu
fpu_full-pacman-upgrade 
i3lock 
neofetch 
q
i3-scrot
q
plank
htop
sudo pcmanfm
sudo mousepad /etc/X11/xorg.conf.d/40-touchpad.conf 
i3-msg
q
sudo restart systemd-logind
q
sudo mousepad /etc/X11/xorg.conf.d/40-touchpad.conf 
sudo mousepad /etc/systemd/logind.conf 
pamixer
lq
q
neofetch 
q
xcompmgr 
fpu_full-pacman-upgrade 
q
i3 reload
neofetch 
q
neofetch 
q
mktemp --suffix=.png
i3lockrc 
convert
i3lock -d -c 00000050
i3lock -d -c 000000
neofetch 
q
cd ./Downloads/
setbg light_bulb_electricity_light_128935_3840x2400.jpg 
xwallpaper --help
q
xwallpaper 
xwallpaper --daemon
setbg
q
drcrun -w 420 -h 20 -x 24 -y 48
drcrun -b -w 420 -h 20 -x 24 -y 48
drcrun -b -i -w 420 -h 20 -x 24 -y 48
dmenu_run -b -i -w 420 -h 20 -x 24 -y 48
dmenu_run -w 420 -h 20 -x 24 -y 48
q
colorballs 
colorblocks 
colorpanes 
bunnyfetch 
q
ls
ll
la
ll
q
;s
xmerge
q
neofetch 
q
neofetch 
colorballs 
colorblocks 
colorpanes 
bunnyfetch 
xmerge 
xst
q
xmerge 
xst
q
export GTK2_RC_FILES="$HOME/.config/gtk-2.0/gtkrc-2.0"
q
drce
drcexit 
setbg
q
setbg
q
paplay alarm-clock-elapsed.oga 
paplay service-login.oga &
paplay service-logout.oga &
paplay complete.oga &
paplay bell.oga &
xmodmap -e "keysym Caps_Lock = Hyper_L"
setxkbmap -option ctrl:hyper
setxkbmap -option ctrl:hyper_l
setxkbmap -option ctrl:hyper_L
setxkbmap -option ctrl:Hyper_L
setxkbmap -option "ctrl:hyper"
setxkbmap -option caps:hyper
xmerge 
q
setxkbmap -option caps:hyper
lockscreen 
dmenumount 
sudo pcmanfm
drcumount 
q
drcrun
q
i3 exit
q
i3 exit
./launch.sh 
reboot
toggletouchpad 
q
reboot
q
bottomleft 
q
displayselect 
q
drcdisplayselect 
drcmount 
i3lockrc 
lockscreen 
sudo pcmanfm
i3-msg workspace $(($(i3-msg -t get_workspaces | tr , '\n' | grep '"num":' | cut -d : -f 2 | sort -rn | head -1) + 1))
xcompmgr 
xcompmgr && q
xcompmgr &
fpu_full-pacman-upgrade 
q
xcompmgr &
c
neofetch 
conky
q
neofetch 
bunnyfetch 
q
tup
q
tun plank
q
scrot --help
scrot -t 100
drcrun 
dmenu_run 
drcrun 
