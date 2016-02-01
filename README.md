# boot2docker_swiss
> boot2docker image with Swiss timezone (Europe/Zurich) and Swiss NTP servers.
>
> based on boot2docker/boot2docker
>
> I welcome any comment and proposal for improvement.
>
> Need a Dockerfile for another timezone? PM me and I'll make it for you. 

## Build your own boot2docker_swiss
```
docker build -t boot2docker_swiss .
docker run --rm boot2docker_swiss > boot2docker_swiss.iso
```

## Create a specific swiss vm
> I prefer to keep the original VM as a fallback, as well as the original boot2docker.iso file.

```
docker-machine create --driver virtualbox swissvm
docker-machine env swissvm
eval $(docker-machine env swissvm)
docker-machine stop swissvm
```

## Change the startup disc of `swissvm`
1. Open Virtual Box
2. Manually change the startup disc in the configuration of `swissvm`
