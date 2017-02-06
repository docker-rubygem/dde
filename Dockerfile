FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.2.9

RUN gem install dde --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["dde_main"]
CMD ["--help"]
