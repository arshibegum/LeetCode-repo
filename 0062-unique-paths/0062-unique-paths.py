
class Solution(object):

    def uniquePaths(self, m, n):
        """
        :type m: int
        :type n: int
        :rtype: int
        """
        #to generate permutation
        def p(x):
            if x == 0:
                return 1
            elif x == 1:
                return x
            
            return x * p(x-1)

    
        # to make sure m is always bigger than n, if not we flip the value
        if n > m:
            m, n = n, m

        #since n is always smaller we subtract 1 to remove the vertical aspect and only account for the horizontal one
        n -= 1
        m = (m-1) + n
        
        #compute using the combination formula
        num_ways = p(m) /  ( p(n) * p (m-n))
        return num_ways
            
        