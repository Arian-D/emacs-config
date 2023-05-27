FROM docker.io/silex/emacs:master-alpine

# TODO: Add more needed packages
RUN apk add --no-cache git

WORKDIR /home/me/

RUN adduser -D me
USER me
COPY --chown=me:me .emacs.d .emacs.d

RUN emacs --batch --script .emacs.d/init.el

ENTRYPOINT ["emacs"]
