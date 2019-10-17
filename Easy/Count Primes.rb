# Count the number of prime numbers less than a non-negative number, n.
#
# Example:
#
# Input: 10
# Output: 4
# Explanation: There are 4 prime numbers less than 10, they are 2, 3, 5, 7

# @param {Integer} n
# @return {Integer}

require 'prime'
def count_primes(n)
    Prime.take_while {|p| p < n }.count
end
