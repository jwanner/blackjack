values = ["A",2,3,4,5,6,7,8,9,10,"J","Q","K"]
suits = ["Hearts", "Spades", "Clubs", "Diamonds"]
$deck = values.product(suits)
$s_deck = $deck.shuffle
prompt = "> "

def popping(card)
  $s_deck.delete(card)
end

result = 1.is_a? Numeric 

def score (cards)
	result = cards.is_a? Numeric
	
	if result == true
		puts "YAy"
	elsif cards.index(0) == "A"
		puts "Ace in the hole"
	else
		puts "royals"
	end
end

puts score ($deck[18])
puts $deck[18]

player = Array.new
card1 = $s_deck[0]
player.push(card1)
popping(card1)

card2 = $s_deck[0]
player.push(card2)
popping(card2)

dealer = Array.new
dealer1 = $s_deck[0]
dealer.push(dealer)
popping(dealer1)

dealer2 = $s_deck[0]
dealer.push(dealer2)
popping(dealer2)

dealer_show = dealer2




# print "Player shows: #{player}"
# print "\nDealer shows #{dealer_show}"


# print "Would you like a hit?"
# prompt
# response = $stdin.gets.chomp.downcase

# if response == "hit"
# 	player.push($s_deck[0])
# elsif response == "stay"
# 	print player
# end
