#!/bin/bash

DOWNLOAD_TESTS_RE="test_(age_restriction|download|subtitles|write_annotations)\.py"

test_set=""

case "$YTDL_TEST_SET" in
    core)
        test_set="-I $DOWNLOAD_TESTS_RE"
    ;;
    download)
        test_set="-i $DOWNLOAD_TESTS_RE"
    ;;
    *)
        break
    ;;
esac

nosetests test --verbose $test_set
