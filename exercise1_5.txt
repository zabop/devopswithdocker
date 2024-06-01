docker pull devopsdockeruh/simple-web-service:ubuntu
docker pull devopsdockeruh/simple-web-service:alpine
docker image ls

# Output:
REPOSITORY                          TAG       IMAGE ID       CREATED       SIZE
devopsdockeruh/simple-web-service   ubuntu    4e3362e907d5   3 years ago   83MB
devopsdockeruh/simple-web-service   alpine    fd312adc88e0   3 years ago   15.7MB

# The alpine version is indeed much smaller than the ubuntu version (15.7MB vs 83MB).
# To make sure the secret message functinality is the same, do:

docker run -d --name ex1_5 devopsdockeruh/simple-web-service:alpine
docker exec -it ex1_5 sh

# then, within the container:
tail -f ./text.log

# Output:

2024-06-01 17:03:48 +0000 UTC
2024-06-01 17:03:50 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
2024-06-01 17:03:52 +0000 UTC
2024-06-01 17:03:54 +0000 UTC
2024-06-01 17:03:56 +0000 UTC
2024-06-01 17:03:58 +0000 UTC
2024-06-01 17:04:00 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'

# The secret message functionality is indeed the same.
