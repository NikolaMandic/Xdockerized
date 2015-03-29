export USER=user
chmod +x ~/.vnc/xstartup
su ubuntu
alias vnc='vncserver -geometry 1440x900 -httpport 20000 -alwaysshared -dpi 96 :1'