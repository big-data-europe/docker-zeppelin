up:
	docker network create spark-net
	docker-compose build
	docker-compose up

down:
	docker-compose down
	docker network rm spark-net

bash:
	docker run --rm -it bde2020/zeppelin:0.10.1 bash

run:
	docker build -t zeppelin ./zeppelin/.
	#docker run -it --rm --net spark-net -p 80:8080 -v $(shell pwd)/notebook:/opt/zeppelin/notebook -v $(shell pwd)/zeppelin-0.10.1-bin-all:/opt/zeppelin zeppelin /bin/bash
	#docker run -it --rm --net spark-net -p 80:8080 -v $(shell pwd)/notebook:/opt/zeppelin/notebook zeppelin /opt/zeppelin/bin/zeppelin.sh
	docker run -it --rm --net spark-net -p 8091:8080 -e ZEPPELIN_ADDR=0.0.0.0 -v $(shell pwd)/notebook:/opt/zeppelin/notebook zeppelin /bin/bash

build:
	docker build -t bde2020/zeppelin:0.10.1 ./zeppelin/.
