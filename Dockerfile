FROM maven:3.6.2-jdk-8

# Firefox

ARG FIREFOX_VERSION=70.0
RUN apt-get update -qqy \
	&& apt-get -qqy install libgtk-3-0 libdbus-glib-1-2 libxt6 \
	&& rm -rf /var/lib/apt/lists/* /var/cache/apt/* \
	&& wget -q -O /tmp/firefox.tar.bz2 https://download-installer.cdn.mozilla.net/pub/firefox/releases/$FIREFOX_VERSION/linux-x86_64/en-US/firefox-$FIREFOX_VERSION.tar.bz2 \
	&& tar xjf /tmp/firefox.tar.bz2 -C /opt \
	&& rm /tmp/firefox.tar.bz2 \
	&& mv /opt/firefox /opt/firefox-$FIREFOX_VERSION \
	&& ln -s /opt/firefox-$FIREFOX_VERSION/firefox /usr/bin/firefox

# Geckodriver

ARG GECKODRIVER_VERSION=v0.26.0
RUN wget -q -O /tmp/geckodriver.tar.gz https://github.com/mozilla/geckodriver/releases/download/$GECKODRIVER_VERSION/geckodriver-$GECKODRIVER_VERSION-linux64.tar.gz \
	&& tar xzf /tmp/geckodriver.tar.gz -C /opt \
	&& rm /tmp/geckodriver.tar.gz \
	&& mv /opt/geckodriver /opt/geckodriver-$GECKODRIVER_VERSION \
	&& ln -s /opt/geckodriver-$GECKODRIVER_VERSION /usr/bin/geckodriver
