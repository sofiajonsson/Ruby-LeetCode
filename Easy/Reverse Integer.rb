# Given a 32-bit signed integer, reverse digits of an integer.
#
# Example 1:
#
# Input: 123
# Output: 321
# Example 2:
#
# Input: -123
# Output: -321
# Example 3:
#
# Input: 120
# Output: 21
# Note:
# Assume we are dealing with an environment which could only store integers within the 32-bit signed integer range: [−231,  231 − 1]. For the purpose of this problem, assume that your function returns 0 when the reversed integer overflows.
#
# establish limits on integers
INT_BIT = 32
INT_MAX =  2 ** (INT_BIT - 1) - 1
INT_MIN = -2 ** (INT_BIT - 1)

def reverse(x)
  return -reverse(-x) if x < 0

  sum = 0
  while x > 0
    sum = sum * 10 + x % 10
    x = x / 10
  end
  sum > INT_MAX ? 0 : sum
end
