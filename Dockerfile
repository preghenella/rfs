FROM rootproject/root-ubuntu16

USER root
WORKDIR /

RUN apt-get update && \
    apt-get -y install \
    emacs-nox \
    libboost-all-dev \
    swig

ENV RFS_ROOT /RFS
RUN mkdir -p $RFS_ROOT

COPY bin/rfsEnv   /usr/local/bin/.
COPY bin/rfsBuild /usr/local/bin/.
COPY patches 	  $RFS_ROOT/patches

RUN /bin/bash -c "source rfsEnv && rfsBuild"

ARG username=rfs
RUN useradd --create-home --home-dir /home/${username} ${username}
ENV HOME /home/${username}

USER ${username}
WORKDIR /home/${username}

CMD ["rfsEnv"]
