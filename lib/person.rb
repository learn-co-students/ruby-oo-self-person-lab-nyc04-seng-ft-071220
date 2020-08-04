# your code goes here
# your code goes here
require 'pry'

class Person
    attr_reader :name
    attr_accessor :happiness, :hygiene, :bank_account

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8       #0-10 points
        @hygiene = 8        #0-10 points
    end

    def happiness
        if @happiness > 10
            return 10
        elsif @happiness < 0
            return 0
        else
            return @happiness
        end
    end

    def hygiene
        if @hygiene > 10
            return 10
        elsif @hygiene < 0
            return 0
        else
            return @hygiene
        end
    end

    def clean?
        @hygiene > 7 ? true : false

    end

    def happy?
         @happiness > 7 ? true : false
    end

    def get_paid(salary)
        self.bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene +=  4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -=  3
        "♪ another one bites the dust ♫"
    end

    def call_friend(another_person)
        self.happiness += 3
        another_person.happiness += 3
        "Hi #{another_person.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(another_person, topic)
        if topic == "politics"
            self.happiness -= 2
            another_person.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            another_person.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end

end
