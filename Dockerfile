FROM totobgycs/archdev
MAINTAINER totobgycs

USER build
WORKDIR /home/build

RUN yaourt -Syy ; \
  yaourt -S --noconfirm --aur jre

RUN yaourt -S --noconfirm unzip; \
  wget https://bitbucket.org/JeanLucPicard/nxt/downloads/nxt-client-1.8.2.zip; \
  unzip nxt-client-1.8.2.zip

WORKDIR /home/build/nxt
VOLUME /home/buil/nxt/nxt_db
EXPOSE 7876
ENTRYPOINT ./run.sh
