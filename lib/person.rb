# your code goes here
require 'pry'

class Person

    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(happiness_lvl)
        @happiness = happiness_lvl
        if @happiness > 10
            @happiness = 10
        elsif @happiness < 0
            @happiness = 0
        end
    end

    def hygiene=(hygiene_lvl)
        @hygiene = hygiene_lvl
        if @hygiene > 10
            @hygiene = 10
        elsif @hygiene < 0
            @hygiene = 0
        end
    end

    def happy?
        @happiness > 7 ? true : false
    end

    def clean? 
        @hygiene > 7 ? true : false
    end

    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        @hygiene += 4
        self.hygiene = hygiene     #Need to dive deeper into this
        "♪ Rub-a-dub just relaxing in the tub ♫"
        # binding.pry
    end

    def work_out
        @hygiene -= 3
        self.hygiene = hygiene
        @happiness += 2
        self.happiness = happiness
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        @happiness += 3
        friend.happiness += 3
        self.happiness = happiness #some doubt here, it applied to both instances and I don't know why.
        convo = "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness -= 2
            person.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            person.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end

# jack = Person.new("Jack")

# binding.pry
# 0