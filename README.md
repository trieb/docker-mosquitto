## Mosquitto MQTT broker image

### Usage

Clone repo:
git clone <out repo>
cd docker-mosquitto

#### docker

Build image:

`docker build -t docker-mosquitto .`

Run comtainer:

`docker run -d docker-mosquitto`

### docker-compose

Build image:

`docker-compose build`

Start service:

`docker-compose up`

### Ports

tcp/1883  MQTT port  
tcp/8883  MQTT port SSL/TLS
tcp/9001  websocket
tcp/9883  websocket SSL/TLS
