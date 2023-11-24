Software ini 100 % bikinan Azkadev



## Command

1. Build

cd paas_server
sudo docker build -t paas_server .
sudo docker run -d --network host --restart always --privileged --name paas_server -v $(pwd):/app -v /usr:/usr paas_server
 
sudo docker restart paas_server
sudo docker stop paas_server

sudo docker rm -f paas_server

