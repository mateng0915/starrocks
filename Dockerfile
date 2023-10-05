# Base Image
FROM starrocks/dev-env-centos7:3.1.5

# Download DI Hadoop into our container
RUN wget --no-check-certificate -O /var/local/thirdparty/installed/hadoop-3.3.sdi-058.tar.gz http://nexus-repo.datainfra.shopee.io:8081/repository/file_server/hadoop_package/hadoop-3.3.sdi-058.tar.gz

RUN tar -zxvf /var/local/thirdparty/installed/hadoop-3.3.sdi-058.tar.gz -C /var/local/thirdparty/installed
RUN rm /var/local/thirdparty/installed/hadoop-3.3.sdi-058.tar.gz
