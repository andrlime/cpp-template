#!/bin/sh

PROJECT_NAME=$1

sed -i.bak "s/\[PROJECTNAMEREPLACEME\]/$PROJECT_NAME/g" cmake/*.cmake
rm -f cmake/*.bak

sed -i.bak "s/\[PROJECTNAMEREPLACEME\]/$PROJECT_NAME/g" src/include/*.hpp
rm -f src/include/*.bak

rm init-template.sh
