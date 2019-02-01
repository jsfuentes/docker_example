APP_NAME=jsjfuentes/docker_example

# Build frontend image
build:
	docker build . -t $(APP_NAME)

# # Login, build, and push latest image to AWS
# push: ecr-login build
# 	docker tag $(APP_NAME):latest $(ECR_REPO)/$(APP_NAME):latest
# 	docker push $(ECR_REPO)/$(APP_NAME):latest

# Runs the docker container locally 
# The app will be available at http://localhost:80
run: build
	docker run -d -p 80:3000 $(APP_NAME)
