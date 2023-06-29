~/noVNC/utils/novnc_proxy --vnc localhost:5900 &

Xvfb :2 -screen 0 1024x768x16 &
fluxbox &
x11vnc -display :2 -forever -nopw -listen localhost -xkb
