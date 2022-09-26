FROM bindertronics/esp32-idf:4.2-0.0.2
COPY ./station ./station
WORKDIR ./station
RUN . /root/esp/esp-idf/export.sh && idf.py build
#docker build -t station . 
#docker run --rm --entrypoint cat station ./build/wifi_station.bin > ./wifi_station.bin  