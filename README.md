# zbrowse

Measurement tool for tracking dependencies for websites.
This tool is part of the [The ZMap Project](https://zmap.io/ "ZMap Project").
The ZMap Project is a large open source community maintains this tool and others that support large-scale Internet measurement.
Much of the development happens at the [University of Michigan](https://www.umich.edu), [University of Illinois Urbana-Champaign](http://illinois.edu/), [University of California, Berkeley](http://www.berkeley.edu/), and [Rapid7](https://www.rapid7.com/). 
The core team can be reached at <zmap-team@umich.edu>. 

This tool is in active development, and [headless Chromium](https://chromium.googlesource.com/chromium/src/+/master/headless/ "Headless Chromium") is in active development. 
Changes in headless Chromium tend to break functionality with certain sites.
**If you are experiencing trouble make sure you have the most up to date build of headless Chromium.**

## Requirements

*  NodeJS 6+
*  headless_shell ([or equivalent headless enabled build from Google](https://chromium.googlesource.com/chromium/src/+/master/headless/README.md "Headless Chromium README"))

## Setup and Usage

This tool will spawn a headless_shell instance and connect on the port provided in the input.


### Setting up zbrowse 

Before using zbrowse, be sure to run `npm install` to get all the relevant node packages downloaded and installed.

```
cd js
npm install
```

### zbrowse Usage

```
cd js
node index.js <path_to_headless_shell> <headless_connect_port> <URL>
```

## Using zbrowse

This is a basic example of using zbrowse to connect to google's website.

```
node index.js ~/src/out/Headless/headless_shell 9222 https://www.google.com
```
