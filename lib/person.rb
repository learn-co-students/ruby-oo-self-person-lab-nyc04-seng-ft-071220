# your code goes here
require 'pry'

class Person 

    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end 

    def happiness=(happiness_index)
        @happiness = happiness_index
        @happiness = 10 if @happiness > 10
        @happiness = 0 if @happiness < 0
    end 
        
    def hygiene=(hygiene_index)
        @hygiene = hygiene_index
        @hygiene = 10 if @hygiene > 10
        @hygiene = 0 if @hygiene < 0
    end 

    def happy?
        if @happiness > 7
            true
        else 
            false
        end 
    end 

    def clean?
        if @hygiene > 7
            true
        else
            false
        end
    end 
    
    def get_paid(salary)
       @bank_account += salary
       'all about the benjamins'
    end 

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end 

    def call_friend (friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
        # binding.pry
    end

    def start_conversation (person, topic)
        convo = [person, self]
        if topic == 'politics'
            convo.each do |being|
                being.happiness -= 2
            end 
            'blah blah partisan blah lobbyist'

        elsif topic == 'weather'
            convo.each do |being|
                being.happiness += 1
            end
            'blah blah sun blah rain'

        else 
            'blah blah blah blah blah' 
        end 

    end 

end 

# binding.pry
# 0
