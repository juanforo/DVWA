#!/bin/bash
set -x
zap-baseline.py -t http://app -r testreport.html >> log_file.txt 2>&1
