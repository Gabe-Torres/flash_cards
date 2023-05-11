require './lib/card'
require './lib/turn'
require './lib/deck'
require './lib/round'
require 'pry'

RSpec.describe Round do
    it 'exists' do 
        card_1= Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
        card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
        deck = Deck.new([card_1, card_2, card_3])
        round = Round.new(deck) 

        expect(round).to be_instance_of(Round)
    end

    it 'has a take turn method' do
        card_1= Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
        card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
        deck = Deck.new([card_1, card_2, card_3])
        round = Round.new(deck) 
        turns = []

        expect(round.take_turn).to be_instance_of(Round)
    end
end