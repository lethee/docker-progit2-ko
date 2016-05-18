FROM ubuntu:16.04

ENV DEBIAN_FRONTEND noninteractive
ENV INITRD No

RUN locale-gen en_US.UTF-8  
ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8 

RUN apt-get update
RUN apt-get install -y curl ruby ruby-dev ruby-bundler libgmp-dev
RUN apt-get install -y make gcc zlib1g-dev libxml2-dev patch

RUN gem install bundler --no-ri --no-rdoc
RUN gem install rake --no-ri --no-rdoc
RUN gem install asciidoctor -v 1.5.4 --no-ri --no-rdoc
RUN gem install json --no-ri --no-rdoc
RUN gem install awesome_print --no-ri --no-rdoc
RUN gem install coderay --no-ri --no-rdoc
RUN gem install pygments.rb --no-ri --no-rdoc
RUN gem install thread_safe --no-ri --no-rdoc
RUN gem install epubcheck --no-ri --no-rdoc
RUN gem install kindlegen --no-ri --no-rdoc
RUN gem install nokogiri -v 1.6.7.2
RUN gem install asciidoctor-epub3 -v 1.5.0.alpha.6 --no-ri --no-rdoc
RUN gem install asciidoctor-pdf -v 1.5.0.alpha.11 --no-ri --no-rdoc
RUN gem install asciidoctor-pdf-cjk-kai_gen_gothic -v 0.1.1 --no-ri --no-rdoc
RUN gem install css_parser -v 1.3.7 --no-ri --no-rdoc
RUN gem install hashery -v 2.1.1 --no-ri --no-rdoc

RUN asciidoctor-pdf-cjk-kai_gen_gothic-install

CMD ["rake", "book:build"]