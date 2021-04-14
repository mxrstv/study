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

      def search(num_array, query)
        rec_bin_search = lambda do |a, x, low, high|
          return -1 if low > high

          mid = (low + high) / 2
          guess = a[mid]
          if guess == x
            mid
          elsif guess > x
            rec_bin_search.call(a, x, low, mid - 1)
          else
            rec_bin_search.call(a, x, mid + 1, high)
          end
        end
        if num_array.empty?
          -1
        else
          low = 0
          high = num_array.length - 1
          rec_bin_search.call(num_array, query, low, high)
        end
      end
    end
  end
end
