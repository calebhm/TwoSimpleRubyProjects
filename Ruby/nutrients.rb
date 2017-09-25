# Location: /Users/meaghaneilers/Desktop/Caleb

cycle = "yes"

while cycle != "no"

print "Weight (lbs): "
weight = Float(gets.chomp)
calories = 17.5*weight
protein = 1.2*weight
fat = 0.5*weight
carb = (calories-(protein*4+fat*9))/4

puts "Approximate nutrients per day:"
puts "Protein: #{protein.to_i} grams"
puts "Fats: #{fat.to_i} grams"
puts "Carbs: #{carb.to_i} grams"
puts "Total: #{calories.to_i} calories."

puts "See values for another bodyweight?"
cycle = gets.chomp

end