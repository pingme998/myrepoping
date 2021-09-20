#!/bin/bash
curl 'https://pastebin.com/raw/uUAtxRsR' >/index.html
curl 'https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2Fdeveloperanaz&count_bg=%23FF1A00&title_bg=%23000000&icon=&icon_color=%23E7E7E7&title=VISITORS&edge_flat=false'
curl 'https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2Fdeveloperanaz&count_bg=%23FF1A00&title_bg=%23000000&icon=&icon_color=%23E7E7E7&title=VISITORS&edge_flat=false'
rclone listremotes
echo "$PORT" >/PORT
rclone rcd --rc-serve --rc-addr=0.0.0.0:$PORT
#--rc-template=/index.html
