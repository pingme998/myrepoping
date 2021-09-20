FROM ubuntu
RUN apt update -y
RUN apt install rclone -y
RUN apt install curl -y
RUN apt install unzip -y
RUN mkdir /root/.config/
RUN mkdir /root/.config/rclone
RUN curl 'https://1sundaran.devilstorage.workers.dev/0:/study/s.zip' > /home/Total.zip
WORKDIR /home
RUN mkdir /home/Total
RUN unzip /home/Total.zip -d /home/Total
RUN rclone version
COPY entrypoint.sh /entrypoint.sh
CMD /entrypoint.sh
