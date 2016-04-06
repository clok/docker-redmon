FROM ruby:2.3
MAINTAINER Derek Smith <drsmith.phys@gmail.com>

# Make ap dir
RUN mkdir -p /usr/src/redmon
WORKDIR /usr/src/redmon

# Copy Gemfile
COPY Gemfile /usr/src/redmon/
COPY Gemfile.lock /usr/src/redmon/

# Install redmon
RUN bundle install

COPY redmon.sh /usr/src/redmon/

EXPOSE 4567

CMD ["/usr/src/redmon/redmon.sh"]
