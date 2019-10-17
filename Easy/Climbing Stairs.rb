# You are climbing a stair case. It takes n steps to reach to the top.
#
# Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?
#
# Note: Given n will be a positive integer.
#
# Example 1:
#
# Input: 2
# Output: 2
# Explanation: There are two ways to climb to the top.
# 1. 1 step + 1 step
# 2. 2 steps
# Example 2:
#
# Input: 3
# Output: 3
# Explanation: There are three ways to climb to the top.
# 1. 1 step + 1 step + 1 step
# 2. 1 step + 2 steps
# 3. 2 steps + 1 step

# @param {Integer} n
# @return {Integer}
# 36ms runtime 9.3 mem
def climb_stairs(n)
  p = 1
  q = 1

  (n - 1).times do
    temp = q
    q += p
    p = temp
  end
  q
end

# 32ms runtime 9.1 mem
def climb_stairs(n)
    memo =[]
    climbStairs(n, memo)
end

def climbStairs(n, memo)
   if memo[n]
       return memo[n]
   elsif n == 1
       return 1
   elsif n == 2
       return 2
   else
       memo[n]= climbStairs(n-1, memo) + climbStairs(n-2, memo)
       return memo[n]
   end
end
