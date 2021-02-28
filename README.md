# Archlinux
Install using [Calam](https://sourceforge.net/projects/blue-arch-installer/)
Edit mirrorlist
```bash
sudo vim /etc/pacman.d/mirrorlist
```
and enable mirrors from Brazil

## Enable ssh
```bash
sudo systemctl enable sshd
```
## Install git
```bash
sudo pacman -S git
```
## Install pacaur
```bash
sudo pacman -S jq expac gmock gtest
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