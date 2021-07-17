#!/bin/bash
rm -rf /opt/$APP_NAME/appsettings.${APP_ENV}.json
ln -s /opt/${APP_NAME}-conf/${APP_NAME}.${APP_ENV}.json /opt/$APP_NAME/appsettings.${APP_ENV}.json
dotnet $APP_DLL
