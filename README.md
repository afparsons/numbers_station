# Numbers Station

_RTMP streaming via FFmpeg à la enigmatic shortwave radio "numbers stations"_

### History &#128251;

> A numbers station is a shortwave radio station characterized by broadcasts of formatted numbers, which are believed to be addressed to intelligence officers operating in foreign countries. Most identified stations use speech synthesis to vocalize numbers, although digital modes such as phase-shift keying and frequency-shift keying, as well as Morse code transmissions, are not uncommon. Most stations have set time schedules, or schedule patterns; however, other stations appear to broadcast at random times. Stations may or may not have set frequencies in the HF band.

_From [Wikipedia](https://en.wikipedia.org/wiki/Numbers_station)_

### Description &#128250;

This simple `bash` script pipes random hexadecimal output through `espeak` and into `ffmpeg`, where it is then streamed to an RTMP service like YouTube Live.

### Requirements &#128203;

- the ability to stream to YouTube Live (or another RTMP service; adjust accordingly)
- `espeak`
- `ffmpeg`
- `shuf`
- Docker (optional)

### Why Docker? &#128011;

I'm testing a trivial Docker deployment using this project.

### Directions (Docker) &#128466; &#65039;

```
sudo docker build -t numbers_station .
sudo docker run -it numbers_station
```

### Directions (script) &#128466; &#65039;

```
cd ./src
./numbers_station <YOUTUBE LIVE KEY>
```

### To-Do &#9999;&#65039;

- Intro
- Outro
- Reduce Docker image size
- Remove key from Docker image / figure out argument passing
