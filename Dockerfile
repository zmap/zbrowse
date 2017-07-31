FROM ubuntu
RUN apt-get update && apt-get install -y \
  npm \
  nodejs \
  chromium-browser \
&& rm -rf /var/lib/apt-lists/*

COPY js /zbrowse
COPY zbrowse.sh /zbrowse

WORKDIR /zbrowse

RUN chmod +x zbrowse.sh

RUN npm install 

ENTRYPOINT ["/zbrowse/zbrowse.sh"]

