#!/bin/bash

for i in {0..39}
do
	port=`expr $i + 10540`
	ngpu=`expr $i / 5` 
	echo "[Start container $i] port: $port, GPU: $ngpu"
	sh run_container.sh $port $ngpu "machine$i"
	#docker exec "machine$i" jupyter notebook --ip=0.0.0.0 --port=$port --no-browser &
	docker exec "machine$i" jupyter lab --ip=0.0.0.0 --port=$port --no-browser &
	#docker exec "machine$i" jupyter notebook --ip=0.0.0.0 --port=$port --no-browser

done
