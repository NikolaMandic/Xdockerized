# Xdockerized
X in docker container
`run.sh`
runs container
`start.sh`
is vnc startup script

So what you want to do from here is to combine this with vnc client like novnc to access desktop running in docker container on whatever machine you want.
and use ssh tunnel in between!
https://kanaka.github.io/noVNC/

ssh tunnel reminder:
connect to ssh port 22 on machine bob@mylinuxserver.xxx 
and from that machine connect to localhost port 110 and make that port available on local port 2110  
`ssh -N -p 22 bob@mylinuxserver.xxx -L 2110:localhost:110`
