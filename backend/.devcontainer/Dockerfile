FROM coeus_backend_base

ARG PROJECT_DIR /app
ARG GIT_ORIGIN https://github.com/mpachin/coeus.git
WORKDIR $PROJECT_DIR

RUN apt-get install --yes git

COPY .ssh /root/.ssh

RUN git clone $GIT_ORIGIN .
