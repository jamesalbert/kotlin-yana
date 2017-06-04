MAIN = bin/mini.jar

main: docker

docker:
	-mkdir bin
	docker build -t kotlin-yana .
	-docker rmi -f $$(docker images --filter "dangling=true" -q)

docker_run: docker
	docker run -t kotlin-yana

docker_clean:
	-docker stop $$(docker ps -q --filter ancestor=kotlin-yana )
	-docker rmi -f kotlin-yana

clean: docker_clean
	-rm -rf bin
