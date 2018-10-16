class Ingredient

    @@all = []

    def initialize(ingredient_name, calorie_count, dessert)
        @name = ingredient_name
        @calorie_count = calorie_count
        @dessert = dessert
        @@all << self
    end

    def self.all
        @@all
    end

    attr_reader :name, :calorie_count, :dessert
end