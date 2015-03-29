from ubuntu:latest
RUN apt-get update
RUN apt-get check
RUN apt-get update
RUN apt-get -y upgrade --fix-missing
RUN apt-get -y upgrade
RUN apt-get -y dist-upgrade
RUN apt-get -yf install xinit xserver-xorg-video-vesa tightvncserver
RUN chmod +x  /etc/X11/xinit/xinitrc
RUN apt-get -yf install xubuntu-desktop
