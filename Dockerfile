FROM: UBUNTU:18.04
RUN apt-get update && apt -y upgrade && apt -y install openssh-server
COPY run /root/run 
RUN chmod 744 /root/run
EXPOSE 20
ENTRYPOINT /root/run
