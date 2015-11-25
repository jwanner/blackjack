values = ["A",2,3,4,5,6,7,8,9,10,"J","Q","K"]
suits = ["Hearts", "Spades", "Clubs", "Diamonds"]
$deck = values.product(suits)
$s_deck = $deck.shuffle
prompt = "> "
total = "Player total is:"


def popping(card)
  $s_deck.delete(card)
end


def score(cards)
	face = cards.map { |x| x.to_s }[0].chars.first
	if face == "A"
		puts 11
	elsif face == "J" || face == "Q" || face == "K"
		puts 10
	else
		number = cards.slice(0)
		puts number
	end
end



# puts "Dealing the cards"

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

player_prompt = "Player shows: #{player}"
dealer_prompt = "\nDealer shows #{dealer_show}"

print player_prompt
print dealer_prompt


	puts score(card1) + score(card2)
	# arr.push(score(i))
	# puts arr.inject(:+)




#  print "\nWould you like a hit?"
#  prompt
#  response = $stdin.gets.chomp.downcase

# if response == "hit"
# 	player.push($s_deck[0])
# elsif response == "stay"
# 	print player_score
# end
