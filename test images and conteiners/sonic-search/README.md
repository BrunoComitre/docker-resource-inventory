# SONIC SEARCH

Documentation on implementing dynamic search using Sonic

***

<br />

## Quickstart

### Locally:

Install the sonic image:
``` $ docker pull valeriansaliou/sonic:v1.3.0 ```

Enter the file address:
``` $ pwd ```

Change the path and rotate the container:
``` $ docker run -p 1491:1491 -v "pwd"/sonic/config.cfg:/etc/sonic.cfg -v "pwd"/sonic/store/:/var/lib/sonic/store/ valeriansaliou/sonic:v1.3.0 ```

Inside the project root add a folder called sonic and inside it create the file: config.cfg

Note: The file found in the project has a standard configuration. Don't forget to change the default password when running in production.

The example video is: [Searching for 1 million data in 0.8ms with Rust | Code/Drops #66](https://www.youtube.com/watch?v=rNCGwggC1RI&t=8s)

Project Link: [Sonic] (https://github.com/valeriansaliou/sonic)

***
