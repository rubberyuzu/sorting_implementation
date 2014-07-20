class HeapSort
	def self.sort(arr)
		sl = []
		heap = self.build_heap(arr)
		heap.length.times do
			sl << heap.shift
			heap = self.heapify(heap, 0)
		end
		sl.reverse
	end

  # left, right refers to the position in
  # the array.

	def self.left(i)
		((i+1)*2)-1
	end
	def self.right(i)
		(i+1)*2
	end

	def self.heapify(h, root)
		max = root
		l, r = self.left(root), self.right(root)
		if l < h.length && h[l] > h[max]
			max = l
		end
		if r < h.length && h[r] > h[max]
			max = r
		end
		if root != max
			h[root], h[max] = h[max], h[root]
			return heapify(h, max)
		else
			return h
		end
	end

	def self.build_heap(arr)
  	heap = arr.clone
	  (((heap.size)-1)/2).downto(0) do |e|
	    heap = self.heapify(heap, e)
	  end
 	  heap
	end

end

list = [9, 0, 45, 3, 6, 7, 20, 19, 5]
p list
p HeapSort.sort(list)
