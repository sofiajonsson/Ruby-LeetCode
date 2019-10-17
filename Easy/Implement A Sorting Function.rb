# This one is not from LeetCode but it's an interview question nonetheless.
# Implement a sorting function from scratch:

# I will be implementing Quick Sort which is of O(n log n) time

def quick_sort(array)
	#initial check of array length:
	return array if array.length <= 1
	pivot = array.delete_at(rand(array.length))

# Can also create new array by calling on class => Array.new
	left = []
	right = []

# Loop through array
	array.each do |x|
		if x <= pivot
			left << x
		else
			right << x
		end
	end
	# Using splat(*) will allow us to account for nil values without breaking
	#If you draw this out it will look like a Binary Search Tree and you will apply the numbers as so:
	return *quicksort(left),pivot, *quicksort(right)

end 
