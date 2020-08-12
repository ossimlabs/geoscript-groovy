FROM adoptopenjdk/openjdk8:centos

RUN yum update -y && \
    yum install -y curl wget which zip unzip

RUN cd /tmp && \
    wget http://dl.bintray.com/groovy/maven/apache-groovy-binary-3.0.3.zip && \
    unzip apache-groovy-binary-3.0.3.zip && \
    mv groovy-3.0.3 /groovy && \
    rm apache-groovy-binary-3.0.3.zip

ENV GROOVY_HOME /groovy
ENV PATH $GROOVY_HOME/bin:$PATH

RUN cd /tmp && \
    wget https://github.com/geoscript/geoscript-groovy/releases/download/1.15.0/geoscript-groovy-1.15.0-zip.zip && \
    unzip geoscript-groovy-1.15.0-zip.zip && \
    mv geoscript-groovy-1.15.0 /geoscript && \
    rm geoscript-groovy-1.15.0-zip.zip

ENV GEOSCRIPT_HOME /geoscript
ENV PATH $GEOSCRIPT_HOME/bin:$PATH

# Example: Add the geoscript groovy files you wish the image to run
#CMD ["geoscript-groovy", "/scripts/geoscript-footprint-cleanup.groovy"]
