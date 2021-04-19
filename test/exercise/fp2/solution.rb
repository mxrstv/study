module Exercise
  module Fp2
    class MyArray < Array
      # Использовать стандартные функции массива для решения задач нельзя.
      # Использовать свои написанные функции для реализации следующих - можно.

      # Написать свою функцию my_each
      def my_each(&block)
        return if empty?

        el = first
        rest = self[1..-1]
        yield el
        rest.my_each(&block)
        self
      end

      # Написать свою функцию my_map
      def my_map
        result = MyArray.new
        my_each { |el| result << yield(el) }
        result
      end

      # Написать свою функцию my_compact
      def my_compact
        result = MyArray.new
        my_each { |el| result << el unless el.nil? }
        result
      end

      # Написать свою функцию my_reduce
      def my_reduce(init_acc = nil, &block)
        return init_acc if empty?

        if init_acc.nil?
          acc = first
          el = self[1]
          rest = self[2..-1]
        else
          acc = init_acc
          el = first
          rest = self[1..-1]
        end
        acc = yield(acc, el)
        rest.my_reduce(acc, &block)
      end
    end
  end
end
