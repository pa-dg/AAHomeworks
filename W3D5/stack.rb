 class Stack
    attr_reader :stack

    def initialize
        @stack = []
    end

    def push(el)
        @stack.push(el)
        el
    end

    def pop
        @stack.pop
    end

    def peek
        return @stack.last
    end

  end


