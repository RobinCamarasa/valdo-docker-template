#!/usr/bin/env bash
rm -rf images
rm -rf output

./build.sh

INPUT_PATH="$(realpath test)"
OUTPUT_PATH="$(realpath output)"
SIF_PATH="image.sif"

singularity exec --nv --net --network=none --no-home -B "${INPUT_PATH}":/input/:'ro' -B "${OUTPUT_PATH}":/output/:'rw' "${SIF_PATH}" python /home/process.py

singularity exec -B "${INPUT_PATH}:/input/:ro" -B "${OUTPUT_PATH}:/output/:ro" docker://python:3.7-slim python -c "import json, sys; f1 = json.load(open('/output/results.json')); f2 = json.load(open('/input/expected_output.json')); sys.exit(f1 != f2)"

if [ $? -eq 0 ]; then
    echo "Tests successfully passed..."
else
    echo "Expected output was not found..."
fi
