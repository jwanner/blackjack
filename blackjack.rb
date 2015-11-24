values = ["A",2,3,4,5,6,7,8,9,10,"J","Q","K"]
suits = ["Hearts", "Spades", "Clubs", "Diamonds"]
$deck = values.product(suits)
$s_deck = $deck.shuffle
prompt = "> "

player_score = 0
dealer_score = 0


def popping(card)
  $s_deck.delete(card)
end


def score (cards,hand)    
	first = cards.map { |x| x.to_s }[0].chars.first
	puts first
	if first == "H" || first == "S" || first== "C" || first == "D"
		number = cards.slice(0)
		hand + number
	elsif first == "A"
		hand + 11
	elsif first == "J" || first == "Q" || first == "K"
		hand + 10
	end
end





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

player_prompt = "Player shows: #{player_score}"
dealer_prompt = "\nDealer shows #{dealer_show}"




score(card1,player_score)
score(card2, player_score)

 print player_prompt 
 print dealer_prompt


 print "Would you like a hit?"
 prompt
 response = $stdin.gets.chomp.downcase

if response == "hit"
	player.push($s_deck[0])
elsif response == "stay"
	print player_score
end





