#!/bin/sh
DIST=dist
if [ ! -e "$DIST" ]
then
	mkdir "$DIST"
	mkdir "$DIST/css"
	mkdir "$DIST/js"
else
	if [ ! -e "$DIST/css" ]; then mkdir "$DIST/css"; fi
	if [ ! -e "$DIST/js" ]; then mkdir "$DIST/js"; fi
fi

echo "Generate..."
lessc css/mochi.less > dist/css/mochi.css
coffee -c -o dist/js/ js/mochi.coffee 
cp mochi.html dist/index.html

echo "Compress..."
which yui-compressor && find "$DIST" -name '*.css' -exec yui-compressor -o "{}" "{}" \;
which uglifyjs && find  "$DIST" -name '*.js' -exec uglifyjs --overwrite "{}" \;

echo "Done."
