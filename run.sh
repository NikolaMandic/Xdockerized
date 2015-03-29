sudo docker run -it --rm -v `pwd`/start.sh:/root/start.sh -v `pwd`/v.sh:/root/.vnc/xstartup -v `pwd`/save:/root/save --cpuset="0,1,2,3" --name  "ds" -p 5901:5901 vn
