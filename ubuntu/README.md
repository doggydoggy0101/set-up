### Ubuntu set-up

```sh
sudo apt update
sudo apt upgrade
```

c++
```sh
sudo apt install -y build-essential cmake gdb
sudo apt install -y libeigen3-dev libboost-all-dev libomp-dev
sudo apt install -y clang-format
```

python
```sh
sudo apt install -y python3 python3-pip 
sudo apt install -y python3-dev python3-venv
sudo apt install -y python-is-python3
pip install numpy matplotlib 
pip install ruff
```

rust
```sh
curl https://sh.rustup.rs -sSf | sh
. "$HOME/.cargo/env" 
```

vscode
```sh
sudo snap install code --classic
```

git
```sh
sudo apt install -y git gh
git config --global user.name "doggydoggy0101"
git config --global user.email "dgbshien@gmail.com"
gh auth login
```

zsh
```sh
sudo apt install -y zsh curl vim 
chsh -s $(which zsh)
echo $SHELL # check current shell
```

font
```sh
wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/Meslo.zip
unzip Meslo.zip -d ~/.fonts
rm Meslo.zip
fc-cache -fv # re-open gnome, change font in preference
```

oh-my-zsh
```sh
# oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# theme powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
```

conda (download here)
```sh
cd Downloads
chmod +x Anaconda3*.sh
# ./Anaconda3<TAB>
```

```sh
# rm ./Anaconda3<TAB>
cd ..
source ~/anaconda3/etc/profile.d/conda.sh
conda init zsh
conda config --set auto_activate_base False
```

others
```sh
sudo apt install -y ninja-build gettext doxygen libtool libtool-bin
sudo apt install -y unzip autoconf automake pkg-config
sudo apt install -y neofetch fzf nptop cmatrix gpg

git clone https://github.com/neovim/neovim.git
cd neovim && git checkout release-0.10
sudo CMAKE_BUILD_TYPE=Release
sudo make -j8 install
cd .. && rm -rf neovim

sudo mkdir -p /etc/apt/keyrings
wget -qO- https://raw.githubusercontent.com/eza-community/eza/main/deb.asc | sudo gpg --dearmor -o /etc/apt/keyrings/gierens.gpg
echo "deb [signed-by=/etc/apt/keyrings/gierens.gpg] http://deb.gierens.de stable main" | sudo tee /etc/apt/sources.list.d/gierens.list
sudo chmod 644 /etc/apt/keyrings/gierens.gpg /etc/apt/sources.list.d/gierens.list
sudo apt update
sudo apt install -y eza
```

config
```sh
git clone https://github.com/doggydoggy0101/set-up.git
cp -r set-up/.config ~/
nvim
```

zshrc
```
alias vim="nvim"
alias ls="eza --color --icons -h --no-permissions --no-user"
neofetch
```

gtk themes
```sh
sudo apt install -y conky jq lua5.4 gnome-tweaks chrome-gnome-shell
```