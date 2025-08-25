# dotfiles
- Old dotfiles(with screenshots + some extra stuff at the bottom) https://github.com/A4bet/OLDdotfiles
- i3 config is configured for 2 monitors (HDMI-0 & DP-0 - delete, add, or change as needed in it's config file -- qtile too)
- Arch Linux is recommended
- **Reminder: `chmod +x script.sh` each shell script**

## Command to make pacman download multiple packages at once:
```
sudo sed -i 's/^#ParallelDownloads/ParallelDownloads/' /etc/pacman.conf
```

## Required Pacakges:
- i3 and or qtile
- intel-ucode or amd-ucode
alacritty picom archlinux-wallpaper lightdm lightdm-webkit2-greeter alsa-utils git ttf-jetbrains-mono-nerd rofi polybar imagemagick xorg-xdpyinfo xautolock i3lock-color(AUR/YAY)

## Optional packages:
ufw (firewall for security)
flatpak
pacman-contrib
flameshot

YAY AUR installation:
```
git clone https://aur.archlinux.org/yay.git
cd yay/
makepkg -si
```

SYSTEMCTLs:
```
sudo systemctl enable ufw
sudo sed -i 's/^#greeter-session=.*/greeter-session=lightdm-webkit2-greeter/' /etc/lightdm/lightdm.conf
sudo sed -i 's/^GRUB_TIMEOUT_STYLE=menu/GRUB_TIMEOUT_STYLE=hidden/' /etc/default/grub
sudo grub-mkconfig -o /boot/grub/cfg

sudo systemctl enable paccache.timer
sudo systemctl enable lightdm.service
```

(LAPTOP) Tap to click on trackpad:
( /etc/X11/xorg.conf.d/40-libinput.conf ):
```
Section "InputClass"
    Identifier "libinput touchpad"
    MatchIsTouchpad "on"
    Driver "libinput"
    Option "Tapping" "on"
    Option "ClickMethod" "clickfinger"
    Option "NaturalScrolling" "on"
EndSection
```
```
sudo systemctl restart display-manager
```
