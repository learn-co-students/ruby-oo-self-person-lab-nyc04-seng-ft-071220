# your code goes here


class Person
    attr_reader :name
    attr_accessor :happiness, :hygiene, :bank_account

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(num)
        @happiness = num
        @happiness = 10 if @happiness > 10
        @happiness = 0 if @happiness < 0 
    end

    def hygiene=(num)
        @hygiene= num
        @hygiene = 10 if @hygiene > 10
        @hygiene = 0 if @hygiene < 0
    end

    def clean?
        self.hygiene > 7
    end

    def happy?
        self.happiness > 7
    end
    
    def get_paid(salary)
        self.bank_account += salary
        p "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        p "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out

        self.happiness += 2
        self.hygiene -= 3
        p "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        friend.happiness += 3
        self.happiness += 3
        p "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics" 
            self.happiness -= 2
            friend.happiness -= 2
            return "blah blah partisan blah lobbyist"
        end

        if topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            return "blah blah sun blah rain"
        end

        if topic != "weather" && topic != "politics"
            p "blah blah blah blah blah"
        end

    end
        
end

sam = Person.new("Sam")
p sam.happiness
p sam.happiness += 4
p sam.happiness