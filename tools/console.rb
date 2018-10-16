#!/usr/bin/env ruby
require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

BakersDelight = Bakery.new('BakersDelight')
BakeUp = Bakery.new('BakeUp')
BreadAndButter = Bakery.new('BreadAndButter')

Custard = BakersDelight.add_dessert('Custard', {'Eggs'=>2, 'Sugar'=>20, 'Cream'=>100, 'Salt'=>2})
# CinnamonRoll = BreadAndButter.add_dessert('CinnamonRoll', ['Cinnamon', 'Bread', 'Sugar', 'Flour'])
# Cheesecake = BakeUp.add_dessert('Cheesecake', ['Cheese', 'Milk', 'Melted Butter'])

Pry.start