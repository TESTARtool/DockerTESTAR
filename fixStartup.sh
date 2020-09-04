#!/bin/sh

echo "/testar/bin/testar &" >/home/seluser/.fluxbox/start1
cp /home/seluser/.fluxbox/startup /home/seluser/.fluxbox/startup.org
cat /home/seluser/.fluxbox/start1 /home/seluser/.fluxbox/startup.org > /home/seluser/.fluxbox/startup
