FROM yunnysunny/ubuntu

RUN apt-get update && \
apt-get install  --no-install-recommends  openjdk-11-jre -y && \
rm -rf /var/lib/apt/lists/*
