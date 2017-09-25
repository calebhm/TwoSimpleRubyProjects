# Location: /Users/meaghaneilers/Desktop/Caleb

go = "yes"
cycle = 1
score = 0
acc = 100
total = 0
diff = 1

puts "Difficulty: 1 or 2"
diff = gets.chomp.to_i

while go != "no"

while cycle == 1
bet = (rand() * 100).to_i

if diff == 1
if bet == 0
    cycle = 1
elsif bet%5 == 0
    cycle = 0
else 
    cycle = 1
end
end

if diff == 2
if bet == 0
    cycle = 1
else 
    cycle = 0
end
end
end
    
puts "Bet: $ #{bet}"

print "Payout: $"
payout = gets.chomp.to_f
payout += 0.0
real_payout = bet*1.5

total += 1

if payout == real_payout
    score += 1
    acc = 100*score/total
    puts "Good job! #{score} correct so far! [#{acc}% accuracy] \nENTER to retry, type 'no' to stop."
else
    acc = 100*score/total
    puts "Nope, the answer is #{real_payout} [#{acc}% accuracy] \nEnter to Retry, type 'no' to stop."
end

go = gets.chomp

if go != "no"
    cycle = 1
else
    cycle = 0
end
end