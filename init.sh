echo "Instalando"
sudo pacman -S alacritty curl vim ttf-fira-code
mkdir -p ~/.config/alacritty && cp configs/alacritty.yml ~/.config/alacritty
echo "configurando git y vim"
cp configs/.gitconfig configs/.vimrc ~/

echo "instalando plug"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim



