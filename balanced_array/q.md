Check array is balanced or not.

To say an array is balanced sum of left and right of index i should be same

a[i-1]+a[i-2]+...+a[1]+a[0] === a[i+1]+a[i+2]+...+a[N-2] + a[N-1]

Return 1 if array is balanced else 0