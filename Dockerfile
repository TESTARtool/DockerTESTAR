FROM selenium/node-chrome:4.0.0-alpha-7-prerelease-20200826

COPY *.jar /

RUN x11vnc -storepasswd <your-password-here> /home/seluser/.vnc/passwd
