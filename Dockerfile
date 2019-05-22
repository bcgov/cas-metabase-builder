FROM registry.access.redhat.com/ubi7/s2i-core:latest

EXPOSE 3000

LABEL io.openshift.expose-services="3000:http"

RUN yum install -y java-1.8.0-openjdk-devel && yum clean all
RUN curl -sL https://rpm.nodesource.com/setup_10.x | bash -
RUN curl -sL https://dl.yarnpkg.com/rpm/yarn.repo | tee /etc/yum.repos.d/yarn.repo && yum install -y yarn && yum clean all
RUN curl -sL https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein -o /usr/bin/lein && chmod +x /usr/bin/lein
