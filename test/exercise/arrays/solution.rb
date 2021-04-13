module Exercise
  module Arrays
    class << self
      def replace(array)
        max_elem = array[0]
        array.each do |elem|
          if elem > max_elem
            max_elem = elem
          else
            max_elem
          end
        end
        array.map { |elem| elem.positive? ? max_elem : elem }
      end

      def search(_array, _query)
        rec_bin_search = lambda do |array, query, low, high|
          return -1 if low > high

          mid = (low + high) / 2
          guess = array[mid]
          if guess == query
            mid
          elsif guess > query
            rec_bin_search.call(array, query, low, mid - 1)
          else
            rec_bin_search.call(array, query, mid + 1, high)
          end
        end
        if _array.empty?
          -1
        else
          low = 0
          high = _array.length - 1
          rec_bin_search.call(_array, _query, low, high)
        end
      end
    end
  end
end
