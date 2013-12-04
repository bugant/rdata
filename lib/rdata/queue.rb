module RData
  class Queue
    def initialize
      @queue = []
    end

    def enqueue(x)
      @queue << x
    end

    def dequeue
      raise '[underflow] Cannot dequeue data from an empty queue' if empty?

      @queue.shift
    end

    def peek
      @queue.first
    end

    def empty?
      @queue.empty?
    end
  end
end
