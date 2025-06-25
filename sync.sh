CONFIG="$HOME/.config/"

dirs=("sway" "nvim" "rofi" "waybar" "ranger" "kitty")

for dir in "${dirs[@]}"; do
    echo "$dir"
    src="$CONFIG/$dir"
    dest="./$dir"

    if [ ! -d "$src" ]; then
        echo "Creating $dest"
        mkdir "$dest"
    fi
    rsync -a "$src/" "$dest"
done
