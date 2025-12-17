for file in images/*.{jpg,png,gif}; do
    [ -f "$file" ] && {
        filename=$(basename "$file")
        [ ! -f "tn/images/$filename" ] && ffmpeg -i "$file" -vf scale=250:-1 "tn/images/$filename"
    }
done