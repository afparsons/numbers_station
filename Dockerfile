FROM ubuntu
COPY ./src/numbers_station.sh /usr/src/numbers_station.sh
COPY ./src/320px-Sprach-Morse-Generator.jpg /usr/src/320px-Sprach-Morse-Generator.jpg
RUN chmod +x /usr/src/numbers_station.sh
RUN apt-get update && apt-get install -y espeak ffmpeg
# CMD ["ls", "/usr/src"]
CMD ["cd", "/usr/src"]
CMD ["/usr/src/numbers_station.sh", "30sm-5kbb-0prv-e8tv"]