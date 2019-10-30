#!/bin/bash

# constants (espeak args)
SPEED=130
PITCH=40
VOICE="en-scottish+whisper"

# constants (ffmpeg options)
FRAMERATE="2"
GROUP_OF_PICTURES=$(("$FRAMERATE" * 2))
SIZE="320x240"
BITRATE_AUDIO="16k"
BITRATE_VIDEO="300k"
IMAGE="./320px-Sprach-Morse-Generator.jpg"
YOUTUBE_URL="rtmp://a.rtmp.youtube.com/live2"
KEY=$1

# possible output (hexadecimal)
ARR=(0 1 2 3 4 5 6 7 8 9 A B C D E F)

# select a random value
# ..pipe value into espeak
# ....pipe espeak into ffmpeg
shuf -e "${ARR[@]}" -r \
| espeak -s $SPEED -p $PITCH -v $VOICE --stdout \
| ffmpeg -re \
      -i - \
      -loop 1 \
      -framerate "$FRAMERATE" \
      -i "$IMAGE" \
      -s "$SIZE" \
      -vcodec libx264 \
      -b:a "$BITRATE_AUDIO" \
      -c:a aac \
      -b:v "$BITRATE_VIDEO" \
      -preset veryfast \
      -pix_fmt yuv420p \
      -maxrate 2048k \
      -bufsize 2048k \
      -strict experimental \
      -g "$GROUP_OF_PICTURES" \
      -f flv "$YOUTUBE_URL/$KEY"

# kill all upon exit
kill -- -$$

