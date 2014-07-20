class BubbleSort
	def self.sort(arr)
		arr.each_index do |i|
			(arr.length-(i+1)).times do |job| 
			# job ... from 0 to arr.length-(i+1)
				if arr[job] > arr[job+1]
					arr[job], arr[job+1] = arr[job+1], arr[job]
				end
			end
		end
	end
end

p BubbleSort.sort([9, 0, 45, 3, 6, 7, 20, 19, 5])