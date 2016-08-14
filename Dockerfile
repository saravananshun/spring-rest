FROM java
MAINTAINER saravanan

RUN apt-get update && apt-get install -y maven git

RUN git clone https://github.com/saravananshun/beaconservice.git /tmp/beaconservice \
       && mv /tmp/beaconservice /home/saravanan/Dev/Spring \
       && rm /tmp/beaconservice

RUN  cd /home/saravanan/Dev/Spring/beaconservice && mvn install

CMD ["echo", "Finished"]
