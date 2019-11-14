FROM ubuntu:18.04
RUN apt-get update && apt -y upgrade && apt -y install openssh-server && apt clean all
COPY run /root/run 
RUN chmod 744 /root/run
EXPOSE 22
ENTRYPOINT /root/run
