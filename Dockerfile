FROM perl:latest
RUN apt-get update && apt-get install -y cpanminus && apt-get clean \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# All custom module of Perl goes here
RUN cpanm WWW::Crawler::Lite && \
  cpanm HTML::TreeBuilder
