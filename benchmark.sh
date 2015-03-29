#!/bin/bash

phoronix-test-suite &>/dev/null || { echo Please install phoronix-test-suites before running this script.; exit 1; }

read -r -d '' SUITES << EOF
pts/compilebench-1.0.1
pts/postmark-1.1.0
pts/nexuiz-1.6.1
pts/mafft-1.4.0
pts/graphics-magick-1.6.1
pts/himeno-1.1.0
pts/c-ray-1.1.0
pts/primesieve-1.3.0
pts/stockfish-1.0.0
pts/hint-1.0.0
EOF

read -r -d '' DISABLED_SUITES << EOF
pts/xonotic-1.4.0
EOF


phoronix-test-suite batch-install $SUITES
phoronix-test-suite batch-run $SUITES
