FROM container-registry.oracle.com/graalvm/native-image:21 AS builder

RUN microdnf -y install wget tar gzip && \
    wget https://dlcdn.apache.org/maven/maven-3/3.9.6/binaries/apache-maven-3.9.6-bin.tar.gz && \
    tar xf apache-maven-3.9.6-bin.tar.gz -C /opt && \
    ln -s /opt/apache-maven-3.9.6 /opt/maven && \
    ln -s /opt/maven/bin/mvn /usr/bin/mvn

WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn -X -Pnative -ntp package

FROM ubi9-minimal:latest AS runner
COPY --from=builder /app/target/spring-native-demo /app
EXPOSE 8080
ENTRYPOINT ["/app"]
