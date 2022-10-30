FROM 172.20.110.174:5000/hadoop:3.3.4

MAINTAINER Zhang <antiproster@gmail.com>

WORKDIR /root

COPY apache-hive-3.1.3-bin.tar.gz /root/

COPY start-hive.sh /root/

# install hive 3.1.3
RUN tar -xzvf apache-hive-3.1.3-bin.tar.gz && \
    mv apache-hive-3.1.3-bin /usr/local/hive && \
    rm apache-hive-3.1.3-bin.tar.gz

COPY hive-site.xml /usr/local/hive/conf/

RUN chmod +x ~/start-hive.sh

# set environment variable
ENV HIVE_HOME=/usr/local/hive
ENV PATH=$PATH:/usr/local/hive/bin

CMD ["sh", "-c", "service ssh start; /root/start-hive.sh; bash"]