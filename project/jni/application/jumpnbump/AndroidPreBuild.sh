#!/bin/sh

echo "Archiving data"
mkdir -p AndroidData
cd src
zip -r ../AndroidData/data.zip doc data >/dev/null

exit 0

