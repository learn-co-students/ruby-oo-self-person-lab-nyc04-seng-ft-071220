# your code goes here
require 'pry'
class Person

    attr_accessor :bank_account, :happiness, :hygiene 

    attr_reader :name, :friend, :caller

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    #can use the .clamp method to keep a number within a range or use if statements has conditionals. 
    
    def happiness# points do not exceed 10, and do not go lower than 0
        @happiness.clamp(0,10)
    end
    def hygiene# points do not exceed 10, and do not go lower than 0
        @hygiene.clamp(0,10)
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
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(caller, topic)
        if topic == "politics"
            self.happiness -= 2
            caller.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            caller.happiness += 1
            return "blah blah sun blah rain"
        else 
            return "blah blah blah blah blah"
        end
    end

end
