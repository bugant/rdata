=begin

This is the Stack class. It allows easy implementation of stacks and use of their operations

# @stack = RData.Stack
# @stack.operation
# ... etc ...

=end

module RData
    class Stack
      def initialize
        @stack = []
      end

      def top
        @stack.last
      end

      def push(x)
        @stack << x
        x
      end

      def pop
        raise '[underflow] Cannot pop data from an empty stack' if empty?
        @stack.pop
      end

      def empty?
        @stack.empty?
      end
    end
end
