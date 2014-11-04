build:  Dockerfile
	docker build -t node .

tag:
	docker tag node moul/node

release: tag
	docker push moul/node
