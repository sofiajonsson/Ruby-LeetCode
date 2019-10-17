# Given an integer n, return the number of trailing zeroes in n!.
#
# Example 1:
#
# Input: 3
# Output: 0
# Explanation: 3! = 6, no trailing zero.
# Example 2:
#
# Input: 5
# Output: 1
# Explanation: 5! = 120, one trailing zero.
# Note: Your solution should be in logarithmic time complexity.

# @param {Integer} n
# @return {Integer}
def trailing_zeroes(n)
  cnt = 0
  while n > 1
    cnt = cnt + n / 5
    n = n / 5
  end
  cnt
end
