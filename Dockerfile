FROM filippovitale/java7
MAINTAINER Filippo Vitale @filippovitale

ENV ELASTICSEARCH_VERSION 1.3.1
RUN wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-$ELASTICSEARCH_VERSION.deb
RUN dpkg -i elasticsearch-$ELASTICSEARCH_VERSION.deb ; rm elasticsearch-$ELASTICSEARCH_VERSION.deb

EXPOSE 9200
EXPOSE 9300

