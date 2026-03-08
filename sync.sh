CONFIG="$HOME/.config/"

dirs=("bash" "nvim" "kitty")

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
