FROM ubuntu:16.04

ENV DEBIAN_FRONTEND noninteractive
ENV INITRD No
ENV LANG en_US.UTF-8

RUN apt-get update
RUN apt-get install -y ruby ruby-dev ruby-bundler libgmp-dev

RUN gem install bundler --no-ri --no-rdoc

RUN gem install rake --no-ri --no-rdoc
RUN gem install asciidoctor -v 1.5.4 --no-ri --no-rdoc

RUN apt-get install -y automake
RUN apt-get install -y make
RUN apt-get install -y gcc

RUN gem install json --no-ri --no-rdoc
RUN gem install awesome_print --no-ri --no-rdoc
RUN gem install coderay --no-ri --no-rdoc
RUN gem install pygments.rb --no-ri --no-rdoc
RUN gem install thread_safe --no-ri --no-rdoc
RUN gem install epubcheck --no-ri --no-rdoc
RUN apt-get install -y curl
RUN gem install kindlegen --no-ri --no-rdoc

RUN apt-get install -y zlib1g
RUN apt-get install -y zlib1g-dev
RUN apt-get install -y libxml2-dev
RUN apt-get install -y patch
RUN gem install nokogiri -v 1.6.7.2
RUN gem install asciidoctor-epub3 -v 1.5.0.alpha.6 --no-ri --no-rdoc
RUN gem install asciidoctor-pdf -v 1.5.0.alpha.11 --no-ri --no-rdoc
RUN gem install asciidoctor-pdf-cjk-kai_gen_gothic -v 0.1.1 --no-ri --no-rdoc

RUN asciidoctor-pdf-cjk-kai_gen_gothic-install