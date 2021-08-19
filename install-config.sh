#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# Install this containing directory as an include path for git config.
# Any file in this directory will be included.
git config --global --add include.path "$SCRIPT_DIR/aliases"