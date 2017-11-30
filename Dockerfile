FROM ubuntu
RUN apt-get update && apt-get install -y \
  npm \
  nodejs \
  chromium-browser \
&& rm -rf /var/lib/apt-lists/*

COPY js /zbrowse/js
COPY zbrowse.sh /zbrowse

WORKDIR /zbrowse/js
RUN npm install

WORKDIR /zbrowse

RUN chmod +x zbrowse.sh

ENTRYPOINT ["/zbrowse/zbrowse.sh"]
