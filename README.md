# make
A simple container to run make command directly, especially for https://3musketeers.io/

# Usage

```
$ cat docker-compose.yml
version: '3.4'
services:
  alpine:
    image: alpine/make
    volumes:
      - .:/opt/app
    working_dir: /opt/app

$ cat Makefile
echo:
	docker-compose run alpine make _echo

_echo:
	echo 'Hello World!'

```
now you can easily run the build
```
$ make echo 

docker-compose run alpine make _echo
echo 'Hello World!'
Hello World!
```

More examples at https://3musketeers.io/
