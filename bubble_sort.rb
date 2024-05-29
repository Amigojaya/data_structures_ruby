# Bubble sort algorithm
def bubble_sort(array)
	n = array.size

	loop do
		# intially taking swapped as false, this we are using for breaking the loop
		swapped = false
		
		# here we are again looping but we are doing loop with total number of elements in array minus 1 element
		# why we are subtracting one element? because the one element that differentiating and swapping with the loop need not to be considered. 
		(n-1).times do |i|
			if array[i] > array[i+1]
				# swapping positions from left, right to right, left
				# example 2,1 -> 1,2
				array[i], array[i+1] = array[i+1], array[i]
				
				swapped = true
			end
		end

		# breaking when array is not swapped (paticularly when whole array is sorted) we are breaking the loop
		break unless swapped
	end

	array
end

example_array = [10,2,33,5,77,90,134]

puts bubble_sort(example_array)
