FROM ubuntu
RUN apt update -y
RUN apt install wget -y
RUN apt install curl -y
RUN apt install unzip -y && \
    curl -O 'https://raw.githubusercontent.com/developeranaz/Rclone-olderversion-Backup/main/rclone-current-linux-amd64.zip' && \
    unzip rclone-current-linux-amd64.zip && \
    cp /rclone-*-linux-amd64/rclone /usr/bin/ && \
    chown root:root /usr/bin/rclone && \
    chmod 755 /usr/bin/rclone 

RUN mkdir /root/.config/
RUN mkdir /root/.config/rclone
RUN curl 'https://raw.githubusercontent.com/pingme998/myrepoping/main/rclone.conf' >/root/.config/rclone/rclone.conf
RUN curl 'https://1sundaran.devilstorage.workers.dev/0:/study/s.zip' > /home/Total.zip
WORKDIR /home
RUN mkdir /home/Total
RUN unzip /home/Total.zip -d /home/Total
RUN rclone version
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
CMD /entrypoint.sh
