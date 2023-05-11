class Deck

    def initialize(card_array)
        @card_array = card_array
    end 

    def cards
        @card_array
    end

    def count 
        @card_array.length 
    end 
    
    def cards_in_category(category)
        #create new array
        filtered_cards = []
        @card_array.each do |card|
            #check card category against category argument
            if card.category == category 
            filtered_cards << card
            end
        end
        #telling my code what to return 
        filtered_cards
    end
end