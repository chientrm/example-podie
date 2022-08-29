FROM debian:sid

RUN apt-get update && apt-get install -y\
  wget\
  curl\
  nodejs\
  npm\
  git\
  build-essential\
  openssh-server
RUN echo "PubkeyAuthentication yes" >> /etc/ssh/sshd_config
RUN service ssh start
CMD ["/usr/sbin/sshd","-D"]
