zbrowse
================

Measurement tool for tracking dependencies for websites. This tool is in active 
development, and headless chromium is in active development. Changed in headless
tend to break functionality with certain sites - make sure you have the most up to
date build of headless Chromium is you are experiencing trouble.

## Requirements
NodeJS 6+
headless_shell (or equivalent headless enabled build from Google, https://chromium.googlesource.com/chromium/src/+/lkgr/headless/README.md)

## Usage
This tool will spawn a headless_shell instance and connect on the port provided in 
the input.

Before using the tool, be sure to do an

```
cd js
npm install
```

to get all the relevant node packages.

```
cd js
node index.js <path_to_headless_shell> <headless_connect_port> <URL>
```

## Example
```
node index.js ~/src/out/Headless/headless_shell 9222 https://www.google.com
```

## Docker usage

### Build image

```
docker build -t zbrowse .
```

### Run

```
docker run --rm zbrowse <url>
```
