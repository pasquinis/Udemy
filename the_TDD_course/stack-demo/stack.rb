class Stack

    def initialize
        @items = []
    end

    def push(item)
        @items << item
    end

    def size
        @items.size
    end

    def pop
        @items.pop
    end
end
