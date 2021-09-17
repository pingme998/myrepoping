FROM ubuntu
RUN apt update -y
RUN apt install rclone -y
RUN apt install curl -y
RUN mkdir /root/.config/
RUN mkdir /root/.config/rclone
RUN curl 'https://gist.githubusercontent.com/pingme998/dd8a9a56b72e162425777d65440ffda7/raw/e9d62679b076461a79e5b046dfcca955277f5682/gistfile1.txt' > /root/.config/rclone/rclone.conf
RUN rclone version
RUN rclone copy unlimited:gta /home --progress
COPY entrypoint.sh /entrypoint.sh
CMD /entrypoint.sh
