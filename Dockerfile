FROM mcr.microsoft.com/azure-cli@2.25.0 as runtime
LABEL "repository"="https://github.com/ams0/acr-task-github-action"
LABEL "maintainer"="Alessandro Vozza"

ADD entrypoint.sh /entrypoint.sh
RUN ["chmod", "+x", "/entrypoint.sh"]
ENTRYPOINT ["/entrypoint.sh"]

FROM runtime