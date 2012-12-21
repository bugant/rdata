module RData
  module LinkedLists
    class SingleLinkedList
      attr_accessor :head, :tail

      def initialize
        @head = nil
        @tail = nil
      end

      def is_empty?
        count == 0
      end

      def count
        length = 0
        current = @head
        while current
          length += 1
          current = current.next
        end
        length
      end

      def add_last(node)
        unless @head
          @head = @tail = node
          @head.next = nil
          @tail.next = nil
        else
          current = @head
          while current.next
            current = current.next
          end
          current.next = node
          @tail = node
        end
      end

      def add_first(node)
        unless @head
          @head = @tail = node
        else
          current = @head
          @head = node
          node.next = current
        end
      end

      def find(value)
        if @head
          current = @head
          while current.value != value
            current = current.next
          end
          current
        else
          nil
        end
      end
    end

    class Node
      attr_accessor :value, :next

      def initialize(value)
        @value = value
        @next = nil
      end
    end
  end
end
