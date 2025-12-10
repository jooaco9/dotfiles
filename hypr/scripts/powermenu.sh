#!/bin/bash

# Opciones con iconos simples
opciones="\n\n"

# Explicación de los cambios:
# --location top : Lo pone arriba al centro
# --y-offset 50  : Lo baja 50 pixeles para que no tape la Waybar (ajustable)
# --width 300    : Ancho total de la "pastilla"
# --lines 1      : Solo una fila de altura
# --columns 3    : Divide el espacio en 3 columnas (hace que sea horizontal)

elegido=$(echo -e "$opciones" | wofi --show dmenu \
                                     --style ~/.config/wofi/style-power.css \
                                     --prompt "Power" \
                                     --location top \
                                     --y-offset 60 \
                                     --width 250 \
                                     --lines 1 \
                                     --columns 3 \
                                     --cache-file /dev/null)

# Ejecutar el comando (ahora comparamos solo el icono para que sea más limpio)
case "$elegido" in
    "")
        systemctl poweroff
        ;;
    "")
        systemctl reboot
        ;;
    "")
        hyprctl dispatch exit
        ;;
esac