sudo apt install curl vim -y

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "¿Quieres installar latex? [s/n]"
read n

if [[ "$n" == "si" ||  "$n" == "s" ||  "$n" == "yes" ||  "$n" == "y" ]]; then
sudo apt install texlive-latex-recommended -y
fi

echo "Agregando archivos de configuracion"

cd linux/
cp -r scripts ~/
cp .gitconfig .vimrc ~/

