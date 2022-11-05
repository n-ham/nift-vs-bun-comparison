#!/usr/bin/env bash

for x in {1..23}
do
	cp content/babel.js bun/babel$x.js
done

cd bun
echo "running \`bun bun babel*.js\`"
bun bun babel*.js
rm babel*.js

echo -e "\nrunning \`nift build-all\`"

cd ..
nsm build-all
chmod u+w output/index.js
rm output/index.js
