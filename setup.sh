#!/bin/bash

phoronix-test-suite &>/dev/null || { echo Please install phoronix-test-suites before running this script.; exit 1; }

phoronix-test-suite batch-setup
