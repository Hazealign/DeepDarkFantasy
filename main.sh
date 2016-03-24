#!/bin/bash
source configure.conf

rm -rf $INPUT_FOLDER
rm -rf $OUTPUT_FOLDER
rm -rf $OUTPUT_FILE

mkdir $INPUT_FOLDER

ffmpeg \
		-threads $THREADS \
		-i $VIDEO_FILE \
		-vf "fps=$FRAMERATE" \
		./$INPUT_FOLDER/%08d.png

python main.py \
		-itr $ITERATIONS \
		-oct $OCTAVES \
		-octs $OCTAVES_SCALE
		-i $INPUT_FOLDER \
		-o $OUTPUT_FOLDER \
		-g $MODEL_IMAGE \
		--gpu 0 \
		-b random \
		-t ~/caffe/models/bvlc_googlenet/ \
		-m bvlc_googlenet.caffemodel

ffmpeg \
		-threads $THREADS \
		-framerate $FRAMERATE \
		-i "$OUTPUT_FOLDER/%08d.png" \
		-c:v "libx264" \
		-vf "fps=$(FRAMERATE),format=yuv420p" \
		-tune fastdecode \
		-tune zerolatency \
		-profile:v baseline "${OUTPUT_FILE}" -y