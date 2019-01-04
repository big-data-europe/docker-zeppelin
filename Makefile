BASE_IMAGE = dockerregistry.mgmt.aws.neighborly.com:5000/neighborly/spark-base:0.0.4-spark2.3.1-hadoop2.8.5
IMAGE_TAG = 0.0.5-zeppelin0.8.0-spark2.3.1-hadoop2.8.5
IMAGE = dockerregistry.mgmt.aws.neighborly.com:5000/neighborly/zeppelin:${IMAGE_TAG}

up:
	docker network create spark-net
	docker-compose build
	docker-compose up -d 

down:
	docker-compose down
	docker network rm spark-net

bash:
	docker exec -it dockerzeppelin_zeppelin_1 bash

run:
	docker build -t zeppelin ./zeppelin/.
	docker run -it --rm --net spark-net -p 80:8080 -v $(shell pwd)/notebook:/opt/zeppelin/notebook -v $(shell pwd)/zeppelin-0.8.0-bin-all:/opt/zeppelin zeppelin /bin/bash
	#docker run -it --rm --net spark-net -p 80:8080 -v $(shell pwd)/notebook:/opt/zeppelin/notebook zeppelin /opt/zeppelin/bin/zeppelin.sh

build:
	docker build -t ${IMAGE} \
	--build-arg BASE_IMAGE=${BASE_IMAGE} \
	./zeppelin/.

push:
	docker push ${IMAGE}