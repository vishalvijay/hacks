Crazy Tree 3
Max. Marks 100
Abhimanyu has a complete binary tree of level L, called Crazy Tree. Levels are numbered 1, 2, ..., L from top to bottom and root is at level 1. Abhimanyu numbers all the leaf nodes 1, 2, 3, ... from left to right. The value of the parent node is the product of values of its child node.

Below are level 2 (left) and level 3 (right) crazy trees

Level 2 Level 3

Abhimanyu defines a magical function S:

S(N, X, Y): This gives the sum of Xth, (X + 1)th, (X + 2)th, ..., Yth nodes at level N.
Abhimanyu wants to find the value of S(N, X, Y) % M for given values of N, X, Y, where M = 1299709.

Input

First line of input contains two space separated integers L and Q, where L is number of levels in the crazy tree and Q is total number of queries. Each of the next Q lines contains three space separated integers N, X and Y.

Output

Output the value of S(N, X, Y) % M in single line for each test case.

Constraints

1 <= L <= 21
1 <= Q <= min(106, (2L - 1) (2L + 4) / 6), where min(a, b) is minimum of a and b
1 <= N <= L
1 <= X <= 2(L - 1)
X <= Y <= 2(L - 1)
Sample Input(Plaintext Link)
 3 14
1 1 1
3 1 4
2 1 2
2 2 2
3 4 4
3 3 3
3 3 4
2 1 1
3 1 2
3 1 3
3 2 2
3 2 4
3 1 1
3 2 3
Sample Output(Plaintext Link)
 24
10
14
12
4
3
7
2
3
6
2
9
1
5
Explanation
As Tree has 3 levels you can refer to right image above.

Now for query 2 1 2 At level 2, Value of node 1 = 2 At level 2, value of node 2 = 12

So, S(2, 1, 2) = 2 + 12 = 14

Time Limit: 2.0 sec(s) for each input file.
Memory Limit: 256 MB
Source Limit: 1024 KB
Marking Scheme: Marks are awarded if any testcase passes.
Allowed languages: JAVA
SUBMISSIONSNext Question 
