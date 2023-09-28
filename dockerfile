FROM ubuntu:22.04

RUN apt-get update && apt-get install samba -y

RUN useradd user1 -p user1
RUN useradd user2 -p user2
RUN useradd admin -p admin

COPY ./configurar.sh /usr/local/bin/configurar.sh
RUN chmod +x /usr/local/bin/configurar.sh

ENTRYPOINT [ "/usr/local/bin/configurar.sh" ]