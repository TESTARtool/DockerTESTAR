
FROM openjdk:8-jdk

RUN wget -q https://testar.org/images/development/testar_master_2.2.3.zip && \
    unzip testar_master_2.2.3.zip && \
    rm testar_master_2.2.3.zip

WORKDIR testar/bin/

RUN touch settings/webdriver_generic.sse

CMD ./testar

#CMD ./testar ShowVisualSettingsDialogOnStartup=false
