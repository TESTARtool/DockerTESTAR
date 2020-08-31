FROM selenium/node-chrome:4.0.0-alpha-7-prerelease-20200826

COPY * /

RUN x11vnc -storepasswd secret /home/seluser/.vnc/passwd
