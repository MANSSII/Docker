FROM centos:7

RUN yum update -y

RUN yum install httpd -y

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

