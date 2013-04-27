#

module RData

    class Queue

        def initialize
            @queue = Array[]
            @head = 0
            @tail = 0
        end

        def enqueue(x)
            @queue[@tail] = x
            @tail = (@tail == @length) ? 1 : @tail + 1
        end

        def dequeue
            if self.is_empty? == "true"
              raise '[underflow] Cannot dequeue data from an empty queue'
            else
              x = @queue[@head]
              @head = (@head == @length) ? 1 : @head + 1
              return x
            end
        end

        def peek
          return @queue[@head]
        end

        def is_empty?
          (@head == 0 && @tail == 0) ? 'true' : 'false'
        end

    end

end
