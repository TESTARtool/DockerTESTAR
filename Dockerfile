FROM selenium/node-chrome:latest
COPY * /


RUN sudo sh -c 'apt-get update'

RUN sudo sh -c 'apt-get -y install openjdk-8-jdk'
RUN sudo sh -c 'unzip testar.zip'
RUN sudo sh -c 'echo >/etc/java-8-openjdk/accessibility.properties'
RUN sudo sh -c 'echo > /testar/bin/settings/webdriver_generic.sse'


EXPOSE 4444 5900


