#!/bin/bash

nodejs js/index.js $@ > /tmp/output.js
cat /tmp/output.js
