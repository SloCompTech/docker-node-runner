# Node runner docker

Docker with node and s6 overlay already setup to run node application

## App installation

1. Option
	- Just mount node app root folder to `/app` like `-v YOURFOLDERPATH:/app`
	- Packages will be automaticaly installed (delete node_modules to reinstall)
	- By default app will be invoked using `npm run start`, you can change behaviour with changing `NODE_RUN_CMD`
2. Option
	- Copy app into docker using `COPY . /app`, and `chown -R $CONATINER_USER:$CONTAINER_USER /app`
	- Packages will be automaticaly installed (delete node_modules to reinstall)
	- By default app will be invoked using `npm run start`, you can change behaviour with changing `NODE_RUN_CMD`

## Parameters

|**Parameter**|**Function**|
|:-----------:|:-----------|
|`-e NODE_RUN_CMD="npm run start"`|Command to run your application|

For additional parameters see [upstream image](https://github.com/SloCompTech/docker-baseimage).

## Issues

Submit issue [here](https://github.com/SloCompTech/docker-baseimage/issues).  

## Versioning

This project uses [semver](https://semver.org/) schema.

## Versions

- *1.0.0* - First version
