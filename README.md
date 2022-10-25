# Demo LAMP Site Lab  

Instructions:  

## Create Network for containers to communicate  

docker network create -d bridge lampnw


## Database Container  

change to folder mysql:  

```cd mysql```  

Build image:  
```docker build -t database .```  

Run container:  

```docker run --name db1 --network=lampnw -e MYSQL_ROOT_PASSWORD=iest -e MYSQL_DATABASE=demo -d database```  

Monitor container logs until MySQL is up and ready to accept connections (Message:  "/usr/sbin/mysqld: ready for connections."):  

```docker logs -f db1```  

Create Demo Database and Add test data:  

```
docker exec -it db1 bash
mysql -u root -p
source schemas/rebuild.sql
exit
exit
```  

## Webserver Container  

change to folder apache:  

```
cd ../apache
```

build webserver docker image and spin a container called webserver1:  

```
docker build -t webserver .   
docker run --name webserver1 --network=lampnw -d -p 80:80 webserver  
```  

## Use the Database  

On a web browser, type the IP address / domain name of the server hosting your docker containers. If you webserver container is running on a port other than 80, then the URL must include the port, for example por 8099:  

```
http://myvm.com:8099  
```  

If you are using Play With Docker (which I recommend), then click the "Open Port" button and type 80.

NOTE: If you are working on a shared VM, you may need to change the port used by the host machine, e.g., -p ANOTHER_PORT:80
Also, in Cloud environments, a Network rule may be required to reach the exposed port over the internet.  
