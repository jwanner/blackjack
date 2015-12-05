values = ["A",2,3,4,5,6,7,8,9,10,"J","Q","K"]
suits = ["Hearts", "Spades", "Clubs", "Diamonds"]
$deck = values.product(suits)
$s_deck = $deck.shuffle
prompt = "> "


def popping(card)
  $s_deck.delete(card)
end


def score(cards)
	face = cards.map { |x| x.to_s }[0].chars.first
	if face == "A"
		return 11
	elsif face == "J" || face == "Q" || face == "K"
		return 10
	else
		number = cards.slice(0)
		return number
	end
end



puts "Dealing the cards"

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


c1 = score(card1)
c2 = score(card2)


player_total = c1 + c2
p_total = "\nPlayer total is: #{player_total}"
puts p_total

print "\nWould you like a hit?"
 prompt
 response = $stdin.gets.chomp.downcase

if response == "hit"
	player.push($s_deck[0])
	puts player[2]
	player_total.push.score(player[2])
else
	puts player
end

puts "Hidden dealer card is #{dealer1}"

d1 = score(dealer1)
d2 = score(dealer2)


dealer_total = d1 + d2
d_total = "Dealer total is #{dealer_total}"

if dealer_total > 17
	puts "Dealer stays"
elsif dealer_total < 17
end








# while
# 	response == "hit"
#     player.push($s_deck[0])
# elsif response == "stay"
# 	print player_total
# end
