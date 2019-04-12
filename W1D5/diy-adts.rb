class Stack
    def initialize
        @stack = []
    end

    def contents
      @stack
    end

    def push(el)
      @stack << el
    end

    def pop
      @stack.pop
      @stack
    end

    def peek
      @stack[-1]
    end
  end

  swag_stack = Stack.new
  puts swag_stack.contents
  swag_stack.push(2)
  puts swag_stack.contents
  swag_stack.push(4)
  puts swag_stack.contents
  swag_stack.pop