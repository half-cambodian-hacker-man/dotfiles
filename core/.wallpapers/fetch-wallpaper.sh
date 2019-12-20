#!/usr/bin/bash

WALLPAPER_URL="https://source.unsplash.com/featured/1920x1080?urban,night,nature,water"
[ -f "$HOME/.wallpapers/images/config" ] && source "$HOME/.wallpapers/images/config"

function fetch() {
    [ -d "$HOME/.wallpapers/images" ] || mkdir "$HOME/.wallpapers/images"
    curl -L "$WALLPAPER_URL" -o "$HOME/.wallpapers/images/wallpaper.jpg"
}

if [ ! -f "$HOME/.wallpapers/images/wallpaper.jpg" ]; then
    fetch
fi

command $@ &
sleep 10
fetch