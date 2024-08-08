# Welcome to hell - aka My dotfiles
## Setup
It's best to do that on a clean install. Because stow creates symlinks to the dotfiles directory where these files are needed.
If someone somehow is reading this that is not me please do backup your configs. Before deploying consider changing the monitor settings in `.config/hypr/monitors.conf`.
```
sudo pacman -S stow
```
```
git clone https://github.com/sentientbottleofwine/dotfiles.git
cd dotfiles/
stow -t ~/ .
```
That **should** work
## Some screenshots
![A shitty desktop](./assests/20240721_16h23m58s_grim.png)
![A shitty desktop 2](./assests/20240721_16h38m20s_grim.png)

## Credits
- [Dreams of Autonomy](https://github.com/dreamsofautonomy) for the oh-my-posh config which I "borrowed", and the zsh config, off of which I was heavily inspired by.
