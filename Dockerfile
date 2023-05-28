FROM docker.io/silex/emacs:master

# TODO: Add more needed packages
RUN apt-get update && apt-get install -y git

WORKDIR /home/me/

RUN useradd -m me
USER me
COPY --chown=me:me .emacs.d .emacs.d

RUN emacs --batch --script .emacs.d/init.el

ENTRYPOINT ["emacs"]
