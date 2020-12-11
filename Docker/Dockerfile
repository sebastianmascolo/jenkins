FROM centos/mysql-56-centos7
USER root

ADD journals-1.0.jar journals-1.0.jar 

#COPY sre-bootcamp-sebastian-03112020/ /tmp/
#RUN chmod -R 777 /tmp/Code


# Downloading and installing Maven
#ARG MAVEN_VERSION=3.6.3         
#ARG USER_HOME_DIR="/root"
#ARG BASE_URL=https://apache.dattatec.com/maven/maven-3/${MAVEN_VERSION}/binaries

#RUN mkdir -p /usr/share/maven /usr/share/maven/ref \
#  && echo "Downlaoding maven" \
#  && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz \
#  \
#  && echo "Unziping maven" \
#  && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1 \
#  \
#  && echo "Cleaning and setting links" \
#  && rm -f /tmp/apache-maven.tar.gz \
#  && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn

#ENV MAVEN_HOME /usr/share/maven
#ENV MAVEN_CONFIG "$USER_HOME_DIR/.m2"
#ENV JAVA_HOME=/usr/lib/jvm/jre-openjdk
#ENV M2_HOME=/opt/maven
#ENV MAVEN_HOME=/opt/maven
#ENV PATH=${M2_HOME}/bin:${PATH}



# Instalo el java 8
RUN yum -y install java-1.8.0-openjdk; yum -y install java-1.8.0-openjdk-devel; yum clean all;

COPY script.sh /tmp/script.sh
RUN chmod a+x /tmp/script.sh
ENTRYPOINT /tmp/script.sh  && /bin/bash


#EXPOSE 8080 3306  
EXPOSE 8080 

