# ZBrowse

ZBrowse is a measurement tool to track dependencies for websites using a command-line headless web browser built on top of Headless Chrome.
This tool produces JSON reports on the structure of websites including the object dependency tree and network requests.
ZBrowse is part of the [The ZMap Project](https://zmap.io/ "ZMap Project"), a large open source community that maintains this tool and others that support large-scale Internet measurement.
Much of the development happens at the [University of Michigan](https://www.umich.edu), [University of Illinois Urbana-Champaign](http://illinois.edu/), [University of California, Berkeley](http://www.berkeley.edu/), and [Rapid7](https://www.rapid7.com/). 
The core team can be reached at <zmap-team@umich.edu>. 

This tool is in active development, and [headless Chromium](https://chromium.googlesource.com/chromium/src/+/master/headless/ "Headless Chromium") is also in active development. 
Changes in headless Chromium can break functionality with certain sites.
**If you are experiencing trouble, make sure you have the most up to date build of headless Chromium.**

## Requirements

*  NodeJS 6+
*  headless_shell ([or equivalent headless enabled build from Google](https://chromium.googlesource.com/chromium/src/+/master/headless/README.md "Headless Chromium README"))

## Getting Started

ZBrowse will spawn a headless_shell instance of Chromium and uses the [DevTools protocol](https://chromedevtools.github.io/devtools-protocol/ "Chrome DevTools Protocol") to instrument, inspect, debug and profile websites.


### Setup

Before using ZBrowse, be sure to run `npm install` to get all the relevant node packages downloaded and installed.

```
cd js
npm install
```

### Usage

```
cd js
node index.js <path_to_headless_shell> <headless_connect_port> <URL>
```

## Example

This is a basic example of using ZBrowse to connect to google.

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
