## README.me

Running nextjs demo in dockerized container.

To run the next js demo in a dockerized container, first we need to build the
image. Here I am using nodejs:8.15.0-alpine, in order to keep the image size
as small as possible.

Checkout the git repository on your local machine, say /home/vishal/nextjs-docker
and move inside the folder.

Now, first we need to build the docker image, so run the command

    ```docker
    docker build -t <image-tag-name> .
    ```
This uses the instructions from the file named <b>Dockerfile</b> to create the image.

Now, tostart the container from the newly created docker image, run the command

    ```docker
    docker run -p <PORT>:3000 -v ./src:/usr/nextjs/app/src --rm <image-tag-name>
    ```

The option --rm will ensure that the container is dropped after you stop the container.
This also means that all the changes you have done inside the container will be lost.
If you  want to keep the changes, run the aforementioned command without --rm option

Open browser and enter the url - http://localhost:&lt;PORT&gt;/

Now, since the src folder is mapped from host to docker container, as you make
changes in the code, next will watch for it, build it and compile it for you.

If you have run the container command once and want to reuse the same container again,
run the command

    ```docker
    docker container ls -a
    ```

This will produce the list of all the containers available. Identify your container and
then run the command

    ```docker
    docker container start <container-name>
    ```
