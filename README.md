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

also make sure to make `save` directory that one is mounted in container so you can switch files back and forth like shared folder in virtualbox.

Also this thing should make clipboard work since it autostarts utility that enables that. If it does not work out of the box it should work since I've used clipboard with this I've just copy pasted my setup without giving it final test.
