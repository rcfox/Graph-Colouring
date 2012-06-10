# Easy Graph Colouring
...only 4 languages involved!

## How It Works
    
    +-----------------------------------------------------------------------> 1) generates a cube-shaped DOT graph
    |           +-----------------------------------------------------------> 2) encodes the graph as facts for the solver
    |           |                   +---------------------------------------> 3) outputs a solution for the graph colouring
    |           |                   |                    +------------------> 4) outputs a coloured DOT graph
    |           |                   |                    |                +-> 5) outputs an image of the graph
    |           |                   |                    |                |
    gvgen -h3 | gvpr -f dot2lp.gv | clingo colour.lp - | perl lp2dot.pl | dot -Tpng -o demo.png

## Requirements

* Graphviz
  * [http://www.graphviz.org/](http://www.graphviz.org/)
  * On Ubuntu: sudo apt-get install graphviz
* clingo
  * [http://potassco.sourceforge.net/](http://potassco.sourceforge.net/)
  * On Ubuntu: sudo apt-get install gringo
* Perl v5.10, or later
  * [http://www.perl.org/](http://www.perl.org/)
  * On Ubuntu: This should be pre-installed.
