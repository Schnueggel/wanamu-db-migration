FROM golio/liquibase

RUN mkdir /changelogs

ADD changelogs/* /changelogs/

ENV LB_CHANGELOG_FILE=/changelogs/changelog1.xml
ENV LB_DB_NAME=wanamu
ENTRYPOINT ["/scripts/liquibase_command.sh"]

CMD ["update"]