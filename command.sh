# To download/create container from image locally 
docker create <image_name>
docker create busybox
3dc10cceef30531319d78d641ba91e345651a90a730154e8fe21ab182db1aee8

# To download image and start/run the container
docker run <image_name> <optional_non-default-command>
docker run hello-world
docker run busybox echo hi
docker run -it busybox sh

# suresh@Sureshs-MacBook-Pro docker-learn % docker ps -a
# CONTAINER ID   IMAGE         COMMAND     CREATED              STATUS                          PORTS     NAMES
# 3dc10cceef30   busybox       "sh"        24 seconds ago       Created                                   nifty_robinson
# 6cb26b117ce4   busybox       "sh"        37 seconds ago       Exited (0) 32 seconds ago                 recursing_albattani
# f85f71ddc973   busybox       "sh"        About a minute ago   Exited (0) About a minute ago             serene_hamilton
# 66376f5bcc44   busybox       "sh"        About a minute ago   Exited (0) About a minute ago             unruffled_pasteur
# 9f567d50cf59   busybox       "sh"        About a minute ago   Exited (0) About a minute ago             zealous_knuth
# 8963e5e771ce   busybox       "echo hi"   About a minute ago   Exited (0) About a minute ago             blissful_tesla
# b5860054a3b7   hello-world   "echo hi"   About a minute ago   Created                                   nifty_greider
# 6fbdc337e2b3   hello-world   "/hello"    2 minutes ago        Exited (0) 2 minutes ago                  

# To start the container from image
# -a display the output in terminal
docker start -a <container_id>
docker start -a 8963e5e771ce

# To get the logs from stopped/
docker logs <running or stopped container_id>
docker logs 8963e5e771ce


# Stop or kill (force) running container
#Defult stop wait time is 10 seconds

docker stop <container_id>

docker kill <container_id>

# Run additional command in running container

docker exec -it <container_id> <additional_command>

#Verbose
docker build --progress=plain .
#To disable cache when building image
docker build --no-cache --progress=plain .
#Creating Dockerfile
#Name should be Dockerfile
FROM <IMAGE>
RUN <set of command>
CMD [<"default command">]
#To create image from Docerfile
docker build . 

# Tag/Naming the images
#Fromat dockerid/project_name:latest
docker build -t yessures/redis:latest .

#start docker from name/tag
docker run yessures/redis

#Set working Directory in Container
WORKDIR=/usr/apps

#Copy dependent files from local to container
COPY ./ ./

#Port mapping/fwd
docker run -p <source_port(local)>:<target_port(container)> image