FROM ubuntu
RUN apt-get update && apt-get install -y \
  npm \
  nodejs \
  chromium-browser \
&& rm -rf /varlib/apt-lists/*

COPY js /zbrowse

WORKDIR /zbrowse

RUN npm install 

ENTRYPOINT ["nodejs", "index.js"]

