#HEADER
Running next js demo in dockerized container

To run the next js demo in a dockerized container, first we need to build the
image. Here I am using nodejs:8.15.0-alpine, in order to keep the image size
as small as possible.

To build the image, run the command

    ```docker
    docker build -t <username>:<tag> .
    ```

To star the container from the newly created docker image, run the command

    ```docker
    docker run -p <PORT>:3000 -v ${PWD}/src:/usr/nextjs/app/src --rm <username>:<tag>
    ```

Open browser and enter the url - http://localhost:4000/

Now, since the src folder is mapped from host to docker container, as you make
changes in the code, next will watch for it, build it and compile it for you.
