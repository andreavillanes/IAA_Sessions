## General Docker Commands

List all docker images:
```
docker images
```

List all **running** docker images:
```
docker ps
```

Connect to a **running** docker image (where "my_docker_container" is the name of the container you want to connect to):
```
docker exec -it my_docker_container bash
```

Delete a docker image:
```
docker rmi -f my_docker_image_name
```

Stop a **running** docker container:
```
docker stop my_docker_container
```

Remove a **running** docker container:
```
docker rm my_docker_container
```

## Windows Toolbox Users - Useful Commands

Use this command to check if your docker vm is running:
```
docker-machine ls
```

Use this command to create a new docker vm image ("default" is the name of the docker vm, and you can rename it to anything you want):
```
docker-machine create default
```

Use this command to ssh / connect to your running docker vm (where "default" is the name of the running docker vm):
```
docker-machine ssh default
```
