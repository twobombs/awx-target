FROM ubuntu:18.04
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive && apt -y install openssh-server curl gpg net-tools mc bash && apt clean all
COPY run /root/run 
RUN chmod 744 /root/run
EXPOSE 22
ENTRYPOINT /root/run
