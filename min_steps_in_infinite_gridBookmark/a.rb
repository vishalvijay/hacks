class Solution
    # param a : array of integers
    # param b : array of integers
    #return an integer

    def get_distace p, c
    	x_d = (p[:x] - c[:x]).abs
        y_d = (p[:y] - c[:y]).abs
        x_d < y_d ? y_d : x_d
    end

    def coverPoints(a, b)
    	steps = 0
    	if a.length > 1
    		i = 1
    		while i < a.length
    			p_point = {x: a[i-1], y: b[i-1]}
    			c_point = {x: a[i], y: b[i]}
    			steps += get_distace p_point, c_point
    			i += 1
    		end
    	end
    	steps
    end
end

a = Solution.new
puts a.coverPoints([ 4, 8, -7, -5, -13, 9, -7, 8 ], [ 4, -15, -10, -3, -13, 12, 8, -8 ])