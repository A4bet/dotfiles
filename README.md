# dotfiles
- Old dotfiles(with screenshots + some extra stuff at the bottom) https://github.com/A4bet/OLDdotfiles
- i3 config is configured for 2 monitors (HDMI-0 & DP-0 - delete, add, or change as needed in it's config file -- qtile too)
- Arch Linux is recommended (remember that the preinstalled `archinstall` is on every mordern Arch ISO)
- With Arch + Qtile it runs at ~550 MB of RAM at idle with just a few terminals open, i3 may be lower since it's less resource instensive.
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

## YAY AUR installation:
```
git clone https://aur.archlinux.org/yay.git
cd yay/
makepkg -si
```

## SYSTEMCTLs:
```
sudo systemctl enable ufw
sudo sed -i 's/^#greeter-session=.*/greeter-session=lightdm-webkit2-greeter/' /etc/lightdm/lightdm.conf
sudo sed -i 's/^GRUB_TIMEOUT_STYLE=menu/GRUB_TIMEOUT_STYLE=hidden/' /etc/default/grub
sudo grub-mkconfig -o /boot/grub/cfg

sudo systemctl enable paccache.timer
sudo systemctl enable lightdm.service
```

## (LAPTOP) Tap to click on trackpad:
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

## Screenshots:
![image](https://github.com/user-attachments/assets/2c4dcf7d-d46f-4636-ae86-7d4a615648be)
![image](https://github.com/user-attachments/assets/8931ad11-479e-48a0-ab2c-fdd6ea44f6b6)
![image](https://github.com/user-attachments/assets/03194683-36a2-4504-af99-433c343f6bc0)
![image](https://github.com/user-attachments/assets/05cee7c0-f033-422b-83bb-2c6278bdc36c)
