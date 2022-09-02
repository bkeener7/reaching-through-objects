class Bag
    attr_reader :candies

    def initialize
        @candies = []
    end

    def empty?
        count < 1
    end

    def count
       @candies.count
    end

    def add_candy(candy)
        @candies << candy
    end

    def contains?(type)
        @candies.any? do |candy|
            candy.type == type
        end
    end
end