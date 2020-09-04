FROM selenium/node-chrome:4.0.0-alpha-7-prerelease-20200826

COPY * /

RUN sudo sh -c 'echo >/etc/java-8-openjdk/accessibility.properties'

RUN sudo sh -c 'apt-get update'
RUN sudo sh -c 'apt-get -y install openjdk-11-jdk'
RUN x11vnc -storepasswd secret /home/seluser/.vnc/passwd
EXPOSE 4444 5900
