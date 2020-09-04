FROM selenium/node-chrome:4.0.0-alpha-7-prerelease-20200826

COPY * /


RUN sudo sh -c 'apt-get update'

RUN sudo sh -c 'apt-get -y install openjdk-8-jdk'
RUN sudo sh -c 'unzip testar.zip'
RUN sudo sh -c 'echo >/etc/java-8-openjdk/accessibility.properties'
RUN sudo sh -c 'echo > /testar/bin/settings/webdriver_generic.sse'
RUN sh -c 'echo sudo /testar/bin/testar & >start1'
RUN sh -c 'cat start1 /home/seluser/.fluxbox/startup > /home/seluser/.fluxbox/startup'

RUN x11vnc -storepasswd secret /home/seluser/.vnc/passwd
EXPOSE 4444 5900


