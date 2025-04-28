FROM linuxserver/deluge:2.1.1-libtorrentv1

# Install Python if not already present
RUN apt-get update && apt-get install -y python3

# Start both Deluge and Python server
CMD \
  deluged && \
  deluge-web && \
  cd /downloads && python3 -m http.server 8000
