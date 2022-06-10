class Queue
    
    attr_reader :queue

    def initialize
        @queue = []
    end

    def enqueue(el)
        @queue.push(el)
        el
    end
    
    def dequeue
        @queue.shift
    end
    
    def peek
        return @queue.first
    end
    
end


  