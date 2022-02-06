apt install curl vim nmap

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Agregando archivos de configuracion"

cd linux/
cp .gitconfig .vimrc ~/

cd ../termux
cp -r scripts/ ~/


