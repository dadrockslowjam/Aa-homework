class Stack
  attr_reader :stack
    def initialize
        @stack = []
    end

    def push(el)
      @stack.push(el)
    end

    def pop
      @stack.pop
      @stack
    end

    def peek
      @stack[-1]
    end
  end

  

  class Queue

    attr_reader :line

    def initialize
      @line = []
    end

    def enqueue(el)
      @line.push(el)
    end

    def dequeue
      @line.shit
      @line
    end

    def peek
      @line[0]
    end

  end

  class Map

    def initialize

    end

    def set_key_value

    end

    def get_key

    end

    def delete_key

    end

    def show

    end
  end