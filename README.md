zbrowse
================

Measurement tool for tracking dependencies for websites. This tool is in active 
development, and headless chromium is in active development. Changed in headless
tend to break functionality with certain sites - make sure you have the most up to
date build of headless Chromium is you are experiencing trouble.

## Requirements
NodeJS 6+
chromium-browser version that supports the --headless option

## Usage
This tool will spawn a headless Chromium and connect on the port provided in 
the input.

Before using the tool, be sure to do an

```
cd js
npm install
```

to get all the relevant node packages.

```
cd js
node index.js <URL>
```

## Example
```
node index.js https://www.google.com
```
