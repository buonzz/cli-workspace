# Docker CLI Workspace

You can use this container to use commonly used cli tools without installing them in your machine

useful for:

* ensuring a consistent workflow across all team that is using different OS (Mac, Linux, Windows etc)
* quickly install all the tools you need by executing a single command (all you need is to have the docker engine installed)
* fetch the dependencies of an app you are working on. 

Demo

![alt text](https://raw.githubusercontent.com/buonzz/cli-workspace/master/demo.gif)


## Softwares Installed

* Node 9.3.0 (npm v5.5.1)
* Yarn 1.12.1
* PHP CLI 7.1
* Composer 1.6.3
* Python 2.7
* Bower 1.8.4
* Gulp 3.9.1
* MySQL Client 14.14
* Git 2.7.4


## Usage

pull and run the container
```
docker run -it buonzz/workspace /bin/bash
```

### Use the container to Fetch composer dependencies

in any folder on which you have composer.json file, just execute the following:

```
docker run -v $(pwd):/var/www buonzz/workspace bash -c "composer install --no-interaction"
```

this will run the workspace, and execute composer install command inside. The resulting vendor folder is generated in the current folder.


### accessing private repos

if you need to have a private repo accessed from within the container, generate ssh keys first, and then place them as in this repo as:

* insecure_id_rsa
* insecure_id_rsa.pub

then rebuild the container. The keys will be copied over to the image and will be used every time a container is created.


### Rebuilding the image

just hit

```
./build.sh
```


### Credits

this project is an evolution of the https://github.com/laradock/workspace from Laradock.