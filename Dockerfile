FROM debian:stable-slim

RUN apt-get update
RUN apt-get --yes --no-install-recommends install \
  make \
  lmodern \
  texlive-base \
  texlive-binaries \
  texlive-extra-utils \
  texlive-font-utils \
  texlive-fonts-recommended \
  texlive-fonts-extra \
  texlive-generic-extra \
  texlive-lang-english \
  texlive-latex-base \
  texlive-latex-extra \
  texlive-latex-recommended \
  texlive-pictures \
  texlive-plain-generic \
  texlive-pstricks \
  latexmk

VOLUME ["/local/source"]
WORKDIR /local/source
