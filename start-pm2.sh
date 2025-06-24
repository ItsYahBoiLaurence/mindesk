#!/bin/bash
npx concurrently --kill-others 'npx nx run-many -t start -p twenty-server twenty-front' 'npx wait-on tcp:3000 && npx nx run twenty-server:worker' 