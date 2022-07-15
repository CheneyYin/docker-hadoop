FROM bde2020/hadoop-base:2.0.1-hadoop3.3.3-java11

MAINTAINER Yan Chengyu <yan.chengyucs@gmail.com>

HEALTHCHECK CMD curl -f http://localhost:14000/ || exit 1

ADD run.sh /run.sh
RUN chmod a+x /run.sh

EXPOSE 14000

CMD ["/run.sh"]
