# Private Registry

## Step by step

```
Install openssl
```

```
check with:
    openssl version -a
Return:
    LibreSSL 2.8.3
    built on: date not available
    platform: information not available
    options:  bn(64,64) rc4(16x,int) des(idx,cisc,16,int) blowfish(idx) 
    compiler: information not available
    OPENSSLDIR: "/private/etc/ssl"
```

```
Create a directory for the certificate:
    mkdir -p /docker_data/certs/
```

```
Create the certificate:
    openssl req -x509 -sha256 -newkey rsa:2048 -keyout <NAME>.key -out <NAME>.crt -days 1024 -nodes
Where:
    <NAME> : Certificate name to be defined.
Example:
    openssl req -x509 -sha256 -newkey rsa:2048 -keyout certificate.key -out certificate.crt -days 1024 -nodes
Retorno:
    Country Name (2 letter code) []:BR
    State or Province Name (full name) []:Bruno Test
    Locality Name (eg, city) []:Bruno Test
    Organization Name (eg, company) []:Bruno Test
    Organizational Unit Name (eg, section) []:Bruno Test
    Common Name (eg, fully qualified host name) []:<NAME HOST MACHINE>.bruno.com.br
    Email Address []:brunotest@brunotest.com.br
```

```

Check the certificate:
    ls -lia
Return:
    00000000 drwxr-xr-x  0 name.host  staff   000 May 00 00:00 .
    00000000 drwxr-xr-x  0 name.host  staff   000 May 00 00:00 ..
    00000000 -rw-r--r--  0 name.host  staff  0000 May 00 00:00 certificate.crt
    00000000 -rw-r--r--  0 name.host  staff  0000 May 00 00:00 certificate.key
```

```
Create a directory for the images:
    mkdir -p /docker_data/images/
 ```

```    
Fetch a registration image within the DockerHub:
    docker search registry
Return:
    The chosen image is the official one
    NAME                                 DESCRIPTION                                     STARS               OFFICIAL            AUTOMATED
    registry                             The Docker Registry 2.0 implementation for s…   2956                [OK]                
```

```
Run the image:
    docker run -d -p 5000:5000 \
    -v /docker_data/images:/var/lib/registry \
    -v /docker_data/certs:/certs \
    -e REGISTRY_HTTP_TLS_CERTIFICATE=/certs/certificate.crt \
    -e REGISTRY_HTTP_TLS_KEY=/certs/certificate.key \
    --restart on-failure \
    --name myregistry \
    rergistry
Where:
    docker run : Rotate the container.
    -d : Detached.
    -p 0000:000 : Run and expose on the defined port.
    Example: 
        5000:5000
    -v : create a volume - <DIRERCTORY FOLDER>:<CONTAINER FOLDER>
    Example:
        /docker_data/images:/var/lib/registry
        /docker_data/certs:/certs
    -e : Specifies environment variables.
    Example:
        REGISTRY_HTTP_TLS_CERTIFICATE=/certs/certificate.crt
        REGISTRY_HTTP_TLS_KEY=/certs/certificate.key
    --restart on-failure : If there is a failure in the container it automatically restarts.
    --name <NAME REGISTRY> : Defining the registry name.
    Example:
        --name myregistry
    <IMAGE NAME> :  Oficial Name created search in dockerhub.
    Example:
        registry
Note:
    The above command was created in a linux environment. For mac environment it was necessary to make modifications to the command lines:
        docker run -it -d -p 5000:5000 \
        -v ~/docker_data/images:/var/lib/registry \
        -v ~/docker_data/certs:/certs \
```

```
check with:
    docker ps
Return:
    CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS                          PORTS               NAMES
    000000000000        registry            "/entrypoint.sh /etc…"   00 seconds ago      Restarting (0) 00 seconds ago                       myregistry
```

```
Dowload nginx image:
    docker pull nginx
```

```
Check with:
    docker images
Return:
    nginx                               latest              000000000000        3 days ago          127MB
    registry                            latest              000000000000        3 months ago        25.8MB
```

```
Specify with tag:
    docker tag <DOCKER USER>/<DOCKER IMAGE> <HOST>:<NAME TAG>
Where:
    - <DOCKER USER> : Name of the user who owns the image on the dockerhub.
    - <DOCKER IMAGE> : Image name.
    - <HOST> : Specifies the name. Image host.
    - <IMAGE NAME> : Defined tag name.
Example:
    docker tag docker.io/nginx localhost:5000/mynginx
```

```
Check with:
    docker images
Return:
    localhost:5000/mynginx              latest              000000000000        3 days ago          127MB
```

```
Push the image to the local server (Registry Local):
    docker push localhost:5000/mynginx
Return:
    localhost:5000/mynginx              latest              000000000000        3 days ago          127MB
```

```
Check with:
    ls -lia /docker_data/images/docker/registry/v2/repositories/
```

***

# Note

This part of the course needs to be better tested, as it was done on virtual machines and operating systems different from the one used by diamond. Pick up to study further on Docker Registry.

***

# References

- [Como criar um certificado autoassinado SSL com OpenSSL](https://imasters.com.br/devsecops/como-criar-um-certificado-autoassinado-ssl-com-openssl)

***