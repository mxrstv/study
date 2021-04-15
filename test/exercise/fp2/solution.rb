module Exercise
  module Fp2
    class MyArray < Array
      # Использовать стандартные функции массива для решения задач нельзя.
      # Использовать свои написанные функции для реализации следующих - можно.

      # Написать свою функцию my_each
      def my_each(&block)
        
        if self[1..].empty?
          yield self.first
        else
          yield self.first
          self[1..].my_each(&block)
        end
        
        self
      end

      # Написать свою функцию my_map
      def my_map
        result = MyArray.new
        my_each {|el| result << yield(el)}
        result
      end

      # Написать свою функцию my_compact
      def my_compact
        result = MyArray.new
        my_each {|el| result << el unless el.nil?}
        result
      end

      # Написать свою функцию my_reduce
      def my_reduce; end
    end
  end
end
