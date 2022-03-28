# [Back to README](../README.md)

# Project installation and starting up

To run the projcet first thing that needs to be done is to build `coeus_backend_base` image (subsequent commands depends on this image).

To build base backend image cd into root project directory and run:

```
$ docker build -f ./docker/coeus_backend_base.Dockerfile -t coeus_backend_base .
```

After the base image is created you can start app with this command:

```
$ docker-compose up
```

...or run a project inside the [dev-container](https://code.visualstudio.com/docs/remote/containers) (`.devcontainer` directory is already configured).