# your code goes here
class Person

#Person instantiation:
    attr_accessor :bank_account, :happiness, :hygiene 
    attr_reader :name 
    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
            @name = name
            @bank_account = 25
            @happiness = 8
            @hygiene = 8
    end
    def happiness
        @happiness.clamp(0, 10)
    end
    def happiness=(amount)
        @happiness += amount 
    end
    def hygiene
        @hygiene.clamp(0, 10)
    end 
    def hygiene=(amount)
        @hygiene += amount 
    end 

#non-attribute instance methods:
    def happy?
        if @happiness > 7
            return true
        else false 
        end 
    end
    def clean?
        if @hygiene > 7
            return true
        else false
        end 
    end 
    def get_paid
        @bank_account += 25
        puts "all about the benjamins"
    end
    def take_bath
        @hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        @happiness += 2
        @hygiene -= 3
        puts "♪ another one bites the dust ♫"
    end
    def call_friend(caller, callee)
        caller.happiness += 3
        callee.happiness += 3
        puts "Hi #{callee}! It's #{caller}. How are you?"
    end
    def start_conversation(conversation_initiator, topic)
        if topic == politics
            conversation_initiator.happiness -= 1
            puts "blah blah partisan blah lobbyist"
        elsif topic == weather
            conversation_initiator += 1
            puts "blah blah sun blah rain"
        else 
            return "blah blah blah blah blah"
        end
    end 
        

end




