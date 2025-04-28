FROM linuxserver/deluge:2.1.1-libtorrentv1

RUN curl https://i.jpillora.com/filebrowser/filebrowser | bash

COPY . .

CMD bash start.sh
