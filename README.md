# Docker Workspace

Use this container to fetch the composer and npm dependencies of an app you are working on. It also have common clients installed such as mysql, redis etc. So that you can inspect the stack or whatever other containers that you need to access.

## Softwares Installed

* Node 9.3.0 (npm v5.5.1)
* Yarn 1.12.1
* PHP CLI 7.1
* Composer
* Python 2.7
* Bower
* Gulp
* MySQL Client


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
