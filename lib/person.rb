# your code goes here
require 'pry'
class Person

    attr_accessor :bank_account, :happiness, :hygiene 

    attr_reader :name, :friend, :caller
    # attr_writer :

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    def happiness=(points)# points do not exceed 10, and do not go lower than 0
        @happiness = points
        if points > 10
            @happiness = 10
        elsif points < 0
            @happiness = 0
        end
    end
    def hygiene=(points)# points do not exceed 10, and do not go lower than 0
        @hygiene = points
        if points > 10
            @hygiene = 10
        elsif points < 0
            @hygiene = 0
        end
    end

    def happy?#true if happiness > 7
        @happiness > 7
    end

    def clean?#true if Hygiene > 7
        @hygiene > 7
    end

    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene= @hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness= @happiness += 2
        self.hygiene= @hygiene - 3
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness= @happiness += 3
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(caller, topic)
        if topic == "politics"
            self.happiness= @happiness - 2
            caller.happiness= caller.happiness - 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness= @happiness + 1
            caller.happiness= caller.happiness + 1
            return "blah blah sun blah rain"
        else topic != "politics" && topic != "weather"
            return "blah blah blah blah blah"
        end
    end

end
