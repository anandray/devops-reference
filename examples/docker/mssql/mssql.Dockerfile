ARG MSSQL_TAG=2022-latest

FROM mcr.microsoft.com/mssql/server:${MSSQL_TAG}
# MSSQL_TAG is specified again because the FROM directive resets ARGs
# (but their default value is retained if set previously)
ARG MSSQL_TAG

VOLUME /opt/mssql-scripts
COPY entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT [ "/bin/bash", "/docker-entrypoint.sh" ]
CMD [ "/opt/mssql/bin/sqlservr" ]
