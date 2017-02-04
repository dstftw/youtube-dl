#!/bin/bash

DOWNLOAD_TESTS = "test_(?:download|subtitles)\.py"

if [[ $YTDL_TEST_SET == "core" ]]; then
    test_set = "-I $DOWNLOAD_TESTS"
elif [[ $YTDL_TEST_SET == "download" ]]; then
    test_set = "-i $DOWNLOAD_TESTS"
else
    test_set = ""
fi

nosetests test --verbose $test_set
