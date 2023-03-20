# Build docker image based on Dockerfile in current 
# directory and name it item-app with tag v1
docker build . -t item-app:v1

# List all local images
docker images

# Change image name (copy image) according to Docker Hub format
docker tag item-app:v1 anandailyasa/item-app:v1

# Login to Docker Hub
echo $PASSWORD_DOCKER_HUB | docker login -u anandailyasa --password-stdin

# Upload / push local docker image to my Docker Hub repository
docker push anandailyasa/item-app:v1