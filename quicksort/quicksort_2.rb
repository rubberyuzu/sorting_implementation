class QuickSort
	def self.sort(arr)
		if arr.length <= 1
			return arr
		else
			pivot = arr[0]
			arr.delete_at(0) # remove the pivot
			
			less = []
			greater = []

			arr.each do |el|
				if el <= pivot
					less << el
				else
					greater << el
				end
			end
			sorted_array = []
			sorted_array << self.sort(less)
			sorted_array << pivot
			sorted_array << self.sort(greater)
			sorted_array.flatten!
		end
	end
end

p QuickSort.sort([1,5,7,2,4,8,3,7])

