export DISPLAY=:99
Xvfb :99 -shmem -screen 0 1366x768x16 &
x11vnc -display :99 -N -forever -passwd x11vnc &
su - chromeuser -c "start-selenium"