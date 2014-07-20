def insertion_sort(arr)
	for i in 0..arr.length-1
		key = arr[i]
		j = i-1
		while j > 0 and arr[j] > key
			arr[j+1] = arr[j]
			j = j-1
		end
		arr[j+1] = key
	end
end

p insertion_sort([1,2,5,3,7,3,9,0])