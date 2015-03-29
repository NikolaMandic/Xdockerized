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

to build docker image run something like 
`docker build -t vn .`

run script uses vn as docker image name so that command makes vn image from docker file.

once you are inside of the container you would use
 `export USER=ubuntu`
 and something like 
 `vncserver -geometry 1440x900 -httpport 20000 -alwaysshared -dpi 96 :1`
 to run desktop with above size
so `:1` means screen name 
if you run this vncserver command again it will start another screen named `:2`
I would suggest to kill old screen before starting new one
so one would check out how to use vncserver in case this thing does not work out of the box
for screen management deleting etc.   
also make sure to check what port it runs on and what port you need to open via docker. so that you can connect vnc client to it. You can make ssh tunnel to that port and then connect with vnc client to your local port.
