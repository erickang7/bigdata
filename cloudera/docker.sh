docker run --name cloudera --hostname=quickstart.cloudera --privileged=true -d -t -i -p 8888 -p 7180:7180 -p 8080:80 cloudera/quickstart /usr/bin/docker-quickstart
docker exec -ti cloudera /bin/bash
/usr/bin/docker-quickstart
