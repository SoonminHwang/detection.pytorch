NV_GPU=$2 nvidia-docker run -it -d -u 1000:0 \
	-p $1:$1 \
	--rm -ti \
	--shm-size=400M \
	--name $3 \
	soonminh/pytorch1.0:cuda10.0-cudnn7-dev-ubuntu16.04

#	soonminh/test:latest


#-e NVIDIA_VISIBLE_DEVICES=$2 \
        #--memory=10g \

#--cpus=0.02 \

#--device-write-bps /dev/nvidia0:1mb \
#	--device-read-bps /dev/nvidia0:1mb \

