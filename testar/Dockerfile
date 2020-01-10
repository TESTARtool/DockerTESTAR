
FROM openjdk:8-jdk

# See https://testar.org/download/ for testar releases
RUN wget -q https://testar.org/images/development/testar_master_2.2.3.zip && \
    unzip testar_master_2.2.3.zip && \
    rm testar_master_2.2.3.zip

WORKDIR testar/bin/

COPY webdriver_docker settings/webdriver_docker

RUN touch settings/webdriver_docker.sse

CMD ./testar
