FROM debian:jessie
RUN echo "what"
RUN apt-get update
RUN apt-get install git -y
RUN apt-get install -y php5 php5-mcrypt php5-dev php5-curl php5-cli php5-json php5-apcu

RUN git clone https://github.com/phacility/libphutil.git /opt/libphutil
RUN git clone https://github.com/phacility/arcanist.git /opt/arcanist

ENV PATH /opt/arcanist/bin/:$PATH

RUN apt-get install -y emacs24