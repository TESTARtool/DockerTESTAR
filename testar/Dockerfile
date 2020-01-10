
FROM openjdk:8-jdk

# See https://testar.org/download/ for testar releases
RUN wget -q https://testar.org/images/development/testar_master_2.2.3.zip && \
    unzip testar_master_2.2.3.zip && \
    rm testar_master_2.2.3.zip

WORKDIR testar/bin/

COPY webdriver_docker settings/webdriver_docker

RUN javac -cp '../lib/*' settings/webdriver_docker/Protocol_webdriver_docker.java && \
    mv settings/webdriver_docker/*.class settings/

RUN touch settings/webdriver_docker.sse

RUN apt-get update && apt-get install -y libxtst-dev libxtst-dev libxrender-dev

CMD ./testar
