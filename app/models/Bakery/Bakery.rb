class Bakery

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_dessert(dessert_name, ingredients_hash)
        dessert = Dessert.new(dessert_name, self)
        hash = ingredients_hash.each { |ingredient, calorie_count| Ingredient.new(ingredient, calorie_count, dessert)}
    end

    def ingredients
        Ingredient.all.select { |ingredient| ingredient.dessert.bakery == self }
    end

    def desserts
        Dessert.all.select { |dessert| dessert.bakery == self }
    end

    def average_calories
        ave_calories = 0
        all_ingredients = self.ingredients
        all_ingredients.each { |ingredient| ave_calories += ingredient.calorie_count }
        ave_calories/all_ingredients.count()
    end

    def shopping_list
        self.ingredients.map { |ingredient| ingredient.name }.join(' ')
    end

    attr_reader :name
end