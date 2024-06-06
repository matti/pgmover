#!/usr/bin/env bash
set -eEuo pipefail

echo "HANG"
tail -f /dev/null & wait
