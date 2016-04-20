You are given a maze with N cells. Each cell may have multiple entry points but not more than one exit (ie. entry/exit points are unidirectional doors like valves).

* The cells are named with an integer value from 0 to N-1.
Nearest meeting cell: Given any two cells - C1,C2, find the closest cell Cm that can be reached from both C1 and C2. (Node with the least value)
* Aim for O(Log (N)) solution, assuming there is an equal spread of incoming edges across cell.

23
4 4 1 4 13 8 8 8 0 8 14 9 15 11 -1 10 15 22 22 22 22 22 21
9 2

Ans: 4