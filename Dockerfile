FROM: UBUNTU:18.04
RUN apt-get update && apt -y upgrade && apt -y install openssh-server
RUN touch /root/run && chmod 744 /root/run && echo "service ssh start" > /root/run
EXPOSE 20
ENTRYPOINT /root/run
