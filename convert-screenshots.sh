#!/opt/homebrew/bin/zsh

for image in $1/*.png
do
  echo $(basename "$image")
  cwebp -quiet -resize 1280 720 "$image" -o "${image%.png}.webp"
  rm "$image"
done
