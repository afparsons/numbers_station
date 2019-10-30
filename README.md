# Numbers Station

_RTMP streaming via FFmpeg à la enigmatic shortwave radio "numbers stations."_

### History

> A numbers station is a shortwave radio station characterized by broadcasts of formatted numbers, which are believed to be addressed to intelligence officers operating in foreign countries. Most identified stations use speech synthesis to vocalize numbers, although digital modes such as phase-shift keying and frequency-shift keying, as well as Morse code transmissions, are not uncommon. Most stations have set time schedules, or schedule patterns; however, other stations appear to broadcast at random times. Stations may or may not have set frequencies in the HF band.

_From [Wikipedia](https://en.wikipedia.org/wiki/Numbers_station)_

### Description

This simple `bash` script pipes random hexadecimal output through `espeak` and into `ffmpeg`, where it is then streamed to an RTMP service like YouTube Live.

### Requirements

- the ability to stream to YouTube Live (or another RTMP service; adjust accordingly)
- `espeak`
- `ffmpeg`
- `shuf`

### Directions

```
cd ./src
./numbers_station <YOUTUBE LIVE KEY>
```

### To-Do

- Intro
- Outro
