#!/bin/sh
gvgen -h3 | ./colour-graph.sh | dot -Tpng -o demo.png
