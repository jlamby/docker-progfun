# Creation d'un volume pour persister les données

FROM busybox
MAINTAINER jlamby

VOLUME ["/root/.sbt", "/root/.ivy2"]


#FROM ubuntu
#MAINTAINER jlamby

#RUN apt-get update
#RUN apt-get upgrade -y

#RUN echo "Installing docker ..."
#RUN apt-get install -y docker.io
#RUN ln -sf /usr/bin/docker.io /usr/local/bin/docker

#RUN echo "Creating workspace folders ..."

#RUN mkdir /workspace
#RUN mkdir /workspace/scala
#RUN mkdir /workspace/sbt
#RUN mkdir /workspace/ivy

#WORKDIR /workspace

#RUN echo "Creating container for scala ..."
#RUN touch getScalaContainer.sh
#RUN chmod u+rx getScalaContainer.sh

#RUN echo "/etc/init.d/docker.io start" >> getScalaContainer.sh
#RUN echo "docker pull lukasz/docker-scala;" >> getScalaContainer.sh
#RUN echo "docker run -t -i lukasz/docker-scala /bin/bash" >> getScalaContainer.sh

#CMD ./getScalaContainer.sh
