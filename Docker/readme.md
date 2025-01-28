Docker Networking
---------------------------------
Docker takes care of the network aspect by default
docker0 interface is created when docker is installed on Linux. 

bridge, host, overlay, macvlan, none are some of the different types. Docker enterprise has overlay.

docker network ls shows all the existing networks on the host. 

By default, 172.17.0.0/16 is used for internal container communication when using bridge type. 
Custom networks can be created accordingly. 

docker inspect <type/name/eg:bridge> shows the network details as well the container using that particular network. 

IPv6 is disabled by default. 
Gateway is 172.17.0.1 which is the default IP of docker0 interface.


docker container run -dt --network <network_name> --name <container_name> <image_name>

