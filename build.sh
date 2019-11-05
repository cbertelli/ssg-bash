#! /bin/bash
# Generate new site content


# Clean old files
echo "Removing old files"
rm -rf ./docs/*.html

echo "Were goign to gen your new html files"

# Gen new files
cat templates/top.html content/index.html templates/bottom.html > ./docs/index.html
cat templates/top.html content/blog.html templates/bottom.html > ./docs/blog.html
cat templates/top.html content/projects.html templates/bottom.html > ./docs/projects.html

echo "Build Complete, here's the contents of docs"
ls -l ./docs 
open .