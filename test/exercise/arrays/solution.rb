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
        0
      end
    end
  end
end
