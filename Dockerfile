FROM ubuntu

ENV DISPLAY=:2

RUN apt-get update
RUN apt-get upgrade -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y x11vnc xvfb fluxbox net-tools git python3 chromium-bsu

RUN git clone https://github.com/novnc/noVNC.git ~/noVNC

COPY . /data

CMD /data/start-container.sh
