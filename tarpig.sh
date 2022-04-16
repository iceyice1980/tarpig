#!/bin/bash
ARCHIVE=$1
DIR=$2

if [[ $# -eq 0 ]] ; then
  echo "Usage: tarpig archive.tar.gz directory_name/"
  exit 1
fi

#!/bin/bash
tar --use-compress-program="pigz -k -9 -p2 " -cf $ARCHIVE.tar.gz $DIR
