values = ["A",2,3,4,5,6,7,8,9,10,"J","Q","K"]
suits = ["Hearts", "Spades", "Clubs", "Diamonds"]
$deck = values.product(suits)
$s_deck = $deck.shuffle

def popping(card)
  $s_deck.delete(card)
end

human = Array.new()
comp = Array.new()

# will refactor into a function

# def deal (player)
# 	card1 = $s_deck[0]
# 	player.push(card1)

# 	card2 = $s_deck[1]
# 	player.push(card2)
# end

card1 = $s_deck[0]
human.push(card1)
popping(card1)

card2 = $s_deck[0]
human.push(card2)
popping(card2)

comp1 = $s_deck[0]
comp.push(comp1)
popping(comp1)

comp2 = $s_deck[0]
comp.push(comp2)
popping(comp2)


community_cards = Array.new
community_cards = $s_deck[0..4]

puts "Your cards are #{human}"





