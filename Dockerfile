FROM jbergknoff/postgresql-client

LABEL com.circleci.preserve-entrypoint=true

RUN echo "try connect to the postgres ."
ADD ./connect.sh .
ENTRYPOINT sh ./connect.sh