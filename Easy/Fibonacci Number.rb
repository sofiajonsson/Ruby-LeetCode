# The Fibonacci numbers, commonly denoted F(n) form a sequence, called the Fibonacci sequence, such that each number is the sum of the two preceding ones, starting from 0 and 1. That is,
#
# F(0) = 0,   F(1) = 1
# F(N) = F(N - 1) + F(N - 2), for N > 1.
# Given N, calculate F(N).

# @param {Integer} n
# @return {Integer}
def fib(n)
      if n<2
          n
      else fib(n-1) + fib(n-2)
    end
end 
