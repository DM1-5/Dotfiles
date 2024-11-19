fecha=$(date)

# Crea el archivo que contiene todos los patches por aplicar
sudo yum updateinfo list security all > securityPatches.log

# Filtra solo los parches criticos
cat securityPatches.log | grep Critical > CriticalSecurityPatches.log

# Cuenta el numero de parches criticos
numCrit=$(grep -c '^' CriticalSecurityPatches.log)

# Filtra solo los parches Importantes
cat securityPatches.log | grep Important > ImportantSecurityPatches.log

# Cuenta el numero de parches Importantes
numImp=$(grep -c '^' ImportantSecurityPatches.log)

# Envia el reporte
mail -s "Cliente:$cliente host:$(hostname) Reportes de parches de seguridad linux" -a "$(pwd)/CriticalSecurityPatches.log" -a "$(pwd)/ImportantSecurityPatches.log" ssepulveda@zingular-consulting.com <<EOF
$(date)
RESUMEN
Parches Criticos: $numCrit
Parches Importantes: $numImp
EOF
