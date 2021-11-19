mkdir -p ~/.config/alacritty && cp alacritty.yml ~/.config/alacritty
cp .gitconfig .vimrc ~/
sudo apt install curl vim -y

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


