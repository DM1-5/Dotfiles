echo "Restarting pulseaudio"
systemctl --user restart pulseaudio

echo "¿Funciono? [s/n]"
read n

if [[ "$n" == "si" ||  "$n" == "s" ||  "$n" == "yes" ||  "$n" == "y" ]]; then
	exit
fi

# Eliminando archivo de configuracion
rm -r ~/.config/pulse

# Matando las instancias de PulseAudio
pulseaudio -k

echo "Quieres instalar Pavucontrol [s/n]"
read n

if [[ "$n" == "si" ||  "$n" == "s" ||  "$n" == "yes" ||  "$n" == "y" ]]; then
	sudo apt install pavucontrol
fi





