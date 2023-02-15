find ~/.local/share/nvim/lazy/*.vim -type f | xargs sed -i "s/^M$/\r/g"
