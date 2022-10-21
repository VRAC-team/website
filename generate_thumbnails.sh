#!/bin/bash

generate_thumbnails() {
  IMAGES_DIR=$1
	echo "IMAGES_DIR:$IMAGES_DIR"

  THUMBNAILS_DIR=$2
	echo "THUMBNAILS_DIR:$THUMBNAILS_DIR"

  rm $THUMBNAILS_DIR -r
  echo "purging old thumbnails directory"

	mkdir $THUMBNAILS_DIR
  echo "creating new thumbnails directory"

	images=$(find $IMAGES_DIR -type f \( -iname \*.jpg -o -iname \*.png \))

	for i in $images;
	do
	  base=$(basename $i)
	  echo "Processing: $i"
	  convert $i -thumbnail 1000x1000 $THUMBNAILS_DIR/$base
	done
}

IMAGES_DIRS=("_robots/2019/images/" "_robots/2020/images/" "_robots/2021/images/" "_robots/2022/images/")
for dir in ${IMAGES_DIRS[@]}
do
	generate_thumbnails $dir $(dirname $dir)"/thumbnails/"
done
