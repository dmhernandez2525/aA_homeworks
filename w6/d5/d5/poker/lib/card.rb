class Card
    attr_reader :value, :suit

    SUIT_STRINGS = {
        :clubs    => "♣",
        :diamonds => "♦",
        :hearts   => "♥",
        :spades   => "♠"
    }

  VALUE_STRINGS = {
    :deuce => "2",
    :three => "3",
    :four  => "4",
    :five  => "5",
    :six   => "6",
    :seven => "7",
    :eight => "8",
    :nine  => "9",
    :ten   => "10",
    :jack  => "J",
    :queen => "Q",
    :king  => "K",
    :ace   => "A"
  }

#   BLACKJACK_VALUE = {
#     :deuce => 2,
#     :three => 3,
#     :four  => 4,
#     :five  => 5,
#     :six   => 6,
#     :seven => 7,
#     :eight => 8,
#     :nine  => 9,
#     :ten   => 10,
#     :jack  => 10,
#     :queen => 10,
#     :king  => 10
#   }


    def initialize(value, suit)
        @value = value
        @suit = suit
    end

    def ==(card)
        self.value == card.value
    end

    
end