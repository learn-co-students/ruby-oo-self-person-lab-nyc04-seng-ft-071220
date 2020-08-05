require 'pry'

class Person

#Person instantiation:
# - First you need to create a person class that is initialized with a name that cannot be changed.
# - Each instance of class `Person`should be able to remember their name
# - Each instance of  class `Person` should start with $25 in their bank accounts
# - Each instance of  class `Person` should start with eight happiness points
# - Each instance of  class `Person` should start with eight hygiene points
# - The happiness and hygiene points should be able to change, however the maximum and minimum points for both happiness and hygiene should be 10 and  0 respectively
# - The amount in the bank account should also be able to change, though it has no max or min.
    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name 
    def initialize(name_arg)
            @name = name_arg 
            @bank_account = 25
            @happiness = 8
            @hygiene = 8
    end
    def happiness
        @happiness = 10 if @happiness > 10
        @happiness = 0 if @happiness < 0
        @happiness  
    end
    def hygiene
        @hygiene = 10 if @hygiene > 10
        @hygiene = 0 if @hygiene < 0
        @hygiene
    end 
    

#non-attribute instance methods:
# The `clean?` and `happy?` methods are pretty similiar: they should return `true` if the happiness or hygiene points exceed 
#   seven. Otherwise they should return false.
    def happy?
        @happiness > 7 
    end
    def clean?
        @hygiene > 7
    end 

# The `get_paid` method should accept a salary amount and add this to the person's bank account. Then the method should 
#   return the string "all about the benjamins".
    def get_paid(salery)
        @bank_account += salery 
        return "all about the benjamins"
    end
# The `take_bath` method should increment the person's hygiene points by four and return the 
#   string "♪ Rub-a-dub just relaxing in the tub ♫".
    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end
# The `work_out` method should increment the person's happiness by two points, decrease their hygiene by three points, 
#   and return the Queen lyrics, "♪ another one bites the dust ♫".
    def work_out
        self.happiness += 2
        self.hygiene -= 3
        return "♪ another one bites the dust ♫"
    end
# The `call_friend` method should accept another instance of the Person class, or "friend". The method should increment the caller and the callee's happiness points by three.
#   (ex. If Stella calls her friend Felix, the method should return "Hi Felix! It's Stella. How are you?")
    def call_friend(callee)
        #binding.pry 
        callee.happiness += 3
        self.happiness += 3
        return "Hi #{callee.name}! It's #{self.name}. How are you?"
    end
# Finally, the `start_conversation` method should accept two arguments, the person to start a conversation with and the topic of conversation.
# * If the topic is politics, both people get sadder and the method returns "blah blah partisan blah lobbyist".
# * If the topic is weather, both people get a little happier and the method returns "blah blah sun blah rain".
# * If the topic is not politics or weather, their happiness points don't change and the method returns "blah blah blah blah blah".
    def start_conversation(whomever_convo_is_with, topic)
        if topic == "politics"
            whomever_convo_is_with.happiness -= 2
            self.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            whomever_convo_is_with.happiness += 1
            self.happiness += 1
            return "blah blah sun blah rain"
        else 
            return "blah blah blah blah blah"
        end
    end 
        

end


