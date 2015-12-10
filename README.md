# netcat-sensor
simple bash script to generate sensor data over TCP using netcat and ramdom variables.

#Use
Execute the following commands on the client 
```shell
$ sudo chmod+x netcat.sh
$ ./netcat.sh
```

Execute the following commands on the server
```shell
$ nc -lk 1234
```
#more
you can simply send the content of a file by remplacing the netcat line in the script by this one
```
nc 192.168.1.3 1234 < myFile.txt
```
