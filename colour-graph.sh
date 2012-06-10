#!/bin/sh
gvpr -f dot2lp.gv | clingo colour.lp - | perl lp2dot.pl
