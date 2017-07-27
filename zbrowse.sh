#!/bin/bash

nodejs index.js $@ > /tmp/output.js
cat /tmp/output.js
