# bubble_sort
# sorts the given array
#
# Implemented improvements:
# - Doesn't attempt to re-sort the last item
# - Doesn't make another pass once the list is sorted
def bubble_sort(array)
  is_sorted = false
  last_item = array.length

  until is_sorted
    is_sorted = true

    (0..last_item).each do |i|
      if !array[i + 1].nil? && array[i] > array[i + 1]
        is_sorted = false
        array[i], array[i + 1] = array[i + 1], array[i]
      end
    end

    last_item -= 1
  end

  array
end
