#!/bin/bash

cat /dev/urandom | tr -dc '[:graph:]' | fold -w20 | head -n 1 | tr -d "\`\'"

