 #!/bin/bash
for i in `seq 1 100`;
 do
        echo -e "i'm alive" | nc 192.168.1.3 1234
        sleep $(($RANDOM % 10)) 
        NUMBER=$(( $RANDOM  ))
	echo $NUMBER
	if ((NUMBER%2 == 0)); then
		echo -e "SENSOR 2" | nc 192.168.1.3 1234 
		echo -e "EVAL $RANDOM" | nc 192.168.1.3 1234
		echo -e "LEVEL $(($RANDOM % 10))" | nc 192.168.1.3 1234
		sleep $(($RANDOM % 25))
	fi	
 done
