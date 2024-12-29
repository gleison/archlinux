# Archlinux

Instalation guide

[Official Arch Linux guide](https://wiki.archlinux.org/title/Installation_guide)
[Dreams of Autonomy guide](https://github.com/dreamsofautonomy/arch-from-scratch)


Edit mirrorlist
```bash
sudo vim /etc/pacman.d/mirrorlist
```
and enable mirrors from Brazil

Enable ssh
```bash
sudo systemctl enable sshd
```

## Install Minimal Gnome

```bash
sudo pacman -S gnome-shell gdm gnome-terminal gnome-control-center gnome-bluetooth-3.0
sudo systemctl enable gdm
sudo systemctl enable bluetooth
```

## Install git

```bash
sudo pacman -S git
```

## Install pacaur

Install vim
```bash
sudo pacman -S vim
```

Edit system-wide bashrc
```bash
sudo vim /etc/bash.bashrc
```

And add
```bash
export EDITOR=vim
```

```bash
sudo pacman -S jq expac
mkdir arch-workspace
cd arch-workspace
git clone https://aur.archlinux.org/auracle-git.git
cd auracle-git
makepkg -si
cd ..
git clone https://aur.archlinux.org/pacaur.git
cd pacaur
makepkg -si
cd ..
#clean up
rm -rf auracle-git pacaur
```

## Install docker
```bash
sudo pacman -S bridge-utils jsoncpp rhash cmake go go-md2man
git clone https://aur.archlinux.org/docker-git.git
cd docker-git
export GO111MODULE=auto
export DOCKER_BUILDTAGS='seccomp'
makepkg -si
cd ..
# clean up
rm -rf docker-git
```
Enable docker
```bash
sudo systemctl enable docker
sudo usermod -a -G docker gleison
```
