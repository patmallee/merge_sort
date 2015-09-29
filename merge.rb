def merge_sort array
	if array.length <= 1
		return array
	else
		a = merge_sort(array[0..(array.length/2-1)])
		b = merge_sort(array[array.length/2..-1])
		new_array = []
		until a.length == 0 || b.length == 0
			if a[0] <= b[0]
				new_array.push(a.shift)
			elsif b[0] < a[0]
				new_array.push(b.shift)
			end
		end
		if a.length >= 0
			a.each do |n|
				new_array << n
			end
		end
		if b.length >= 0
			b.each do |n|
				new_array << n
			end
		end
		return new_array
	end
end

puts merge_sort([4,6,3,40,6,4,9,7])