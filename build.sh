#!/usr/bin/env sh

cd assets/excalidraw
# 1. Install dependencies using the updated omit flag
npm install --omit=optional --verbose

# 2. Build the app using npm while setting the environment variable
NODE_ENV=production npm run build:app

rm -rf ../dist/*
cp -rf build/* ../dist/
rm -f ../dist/*.map ../dist/static/css/*.map ../dist/static/js/*.map
cd -
