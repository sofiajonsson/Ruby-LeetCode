# Given an array of integers, return indices of the two numbers such that they add up to a specific target.
#
# You may assume that each input would have exactly one solution, and you may not use the same element twice.
#
# Example:
#
# Given nums = [2, 7, 11, 15], target = 9,
#
# Because nums[0] + nums[1] = 2 + 7 = 9,
# return [0, 1].


# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}

# 32ms runtime 10.2 mem
def two_sum(nums, target)
    hash = {}
    nums.each_with_index { |number, index| hash[number] = index }

    nums.each_with_index do |number, index|
        difference = target - number
        if hash[difference] && hash[difference] != index
            return [index, hash[difference]]
        end
    end
end

# 40ms runtime 10.1 mem
def two_sum(nums, target)
    map ={}
    output =[]

    nums.each_with_index do |num, i|
        diff = target - num
        if map.has_key?(num)
            output= [map[num],i]
        else
            map[diff] = i
        end
    end
    output
end
