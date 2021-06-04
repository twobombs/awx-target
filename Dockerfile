FROM ubuntu:18.04
RUN apt-get update && apt -y upgrade && apt -y install openssh-server bash && apt clean all
RUN curl -s https://install.zerotier.com | bash
RUN rm /var/lib/zerotier-one/identity.public && rm /var/lib/zerotier-one/identity.secret
COPY run /root/run 
RUN chmod 744 /root/run
EXPOSE 22
ENTRYPOINT /root/run
