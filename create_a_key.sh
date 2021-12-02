ssh-keygen -t ed25519 -C "santiago.sepulveda1@utp.edu.co" && eval "$(ssh-agent -s)" && ssh-add ~/.ssh/id_ed25519
echo "¡Clave creada!"

echo "Esta es tu clave publica"

cat ~/.ssh/id_ed25519.pub
