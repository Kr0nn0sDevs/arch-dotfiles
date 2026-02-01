#!/bin/bash

# 1. Instalar paquetes esenciales desde tu lista
sudo pacman -S --needed - < ~/paquetes.txt

# 2. Crear carpetas de config si no existen
mkdir -p ~/.config

# 3. Clonar tus dotfiles (asumiendo que los subiste a GitHub)
git clone https://github.com/tu_usuario/mis-dotfiles.git /tmp/dotfiles

# 4. Crear enlaces simbólicos (esto vincula la carpeta de git con tu sistema)
ln -sf /tmp/dotfiles/hypr ~/.config/hypr
ln -sf /tmp/dotfiles/kitty ~/.config/kitty
ln -sf /tmp/dotfiles/.zshrc ~/.zshrc

echo "Sistema restaurado. ¡A darle!"
