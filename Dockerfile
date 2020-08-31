FROM selenium/node-chrome:4.0.0-alpha-7-prerelease-20200826

RUN apt-get install openjdk-14-jre
RUN apt-cache purge

COPY *.jar /

RUN x11vnc -storepasswd <your-password-here> /home/seluser/.vnc/passwd
