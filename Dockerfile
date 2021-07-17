FROM <registry>/dotnet/aspnet:3.1
ARG APP_NAME
COPY publish/$APP_NAME /opt/$APP_NAME
COPY ./docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh && mkdir /opt/$APP_NAME-conf && adduser --disabled-password --no-create-home --gecos '' dotnet && chown -R dotnet /opt/$APP_NAME /opt/$APP_NAME-conf && chmod -R 775 /opt/$APP_NAME /opt/$APP_NAME-conf
USER dotnet
WORKDIR /opt/$APP_NAME
ENTRYPOINT ["/bin/bash", "/docker-entrypoint.sh"]
