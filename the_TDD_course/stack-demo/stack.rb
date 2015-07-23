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

    def top
        @items.last
    end

    def pop
        @items.pop
    end

    def empty?
        @items.size == 0
    end
end
