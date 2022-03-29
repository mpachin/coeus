FROM coeus_backend_base

ARG PROJECT_DIR /app
ENV DIR $PROJECT_DIR
WORKDIR $PROJECT_DIR

COPY . $DIR
RUN chmod +x $DIR/run.sh
RUN mix do deps.get, deps.compile

ENTRYPOINT /bin/sh $DIR/run.sh
