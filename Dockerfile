FROM yunnysunny/ubuntu

RUN apt-get update && \
apt-get install  --no-install-recommends  openjdk-21-jre-headless -y && \
apt-get clean && \
rm /var/lib/apt/lists/* -rf