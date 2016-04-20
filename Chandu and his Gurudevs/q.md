Chandu is a problem setter at HackerEarth. He used to call all his seniors, Gurudev. Once Gurudevs realized Chandu is getting lazy, and they asked to him to set a problem. So he came up with a problem. He explained the problem to Gurudevs.

Given a undirected graph G with N nodes. The graph G has 2 properties:

G is connected
G has N-1 edges
Then he defined a function F such that F(a, b) is equal to the maximum edge weight in the path from a to b.

Now the problem is quite simple. We need to find the sum of the F(a, b) for all a, b such that 1 <= a, b <= N (mod 109 + 7).

As we all know that Chandu is lazy. Chandu submitted the problem but he did not submit the solution of the problem. So he asked you to write the solution for him.

Input:
First line contains an integer T, number of test cases.
First line of each test case consists of an integer N, number of nodes.
Next N-1 lines follows. ith line contains three space separated integers ai, bi and ci which denotes that there is an edge from ai to bi with edge weight ci.

Output:
For each test case print a single integer that is equal to the sum of the F(a, b) for all a, b such that 1 <= a, b <= N (mod 109 + 7).

Constraints:
1 <= T <= 105
1 <= N <= 2 * 105
0 <= ci <= 108
1 <= ai, bi <= N
sum of N over all the testcases will be <= 2 * 106

Sample Input(Plaintext Link)
 1
5
1 2 2
2 3 1
2 4 4
4 5 3
Sample Output(Plaintext Link)
 32

 F(a, b) is equal to the maximum edge weight in the path from a to b.

F(1, 2) = 2
F(1, 3) = 2
F(1, 4) = 4
F(1, 5) = 4
F(2, 3) = 1
F(2, 4) = 4
F(2, 5) = 4
F(3, 4) = 4
F(3, 5) = 4
F(4, 5) = 3

Answer = F(1, 2) + F(1, 3) + F(1, 4) + F(1, 5) + F(2, 3) + F(2, 4) + F(2, 5) + F(3, 4) + F(3, 5) + F(4, 5)
= 2 + 2 + 4 + 4 + 1 + 4 + 4 + 4 + 4 + 3 = 32

