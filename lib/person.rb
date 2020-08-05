require "pry"

class Person
attr_reader :name
attr_accessor :bank_account, :happiness, :hygiene, :get_paid, :take_bath

def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
end


def happiness
    if @happiness > 10
        @happiness = 10
    elsif @happiness < 0
        @happiness = 0
    end
    @happiness #updated value!!!!
end

def hygiene
    if @hygiene > 10
        @hygiene = 10
    elsif @hygiene < 0
        @hygiene = 0
    end
    @hygiene
end

# The happiness and hygiene points should be able to change, however the maximum and minimum points for both happiness and hygiene should be 10 and  0 respectively
# - The amount in the bank account should also be able to change, though it has no max or min.


def clean?
    @hygiene > 7
    # hey should return `true` if the happiness or hygiene points exceed seven. Otherwise they should return false.
end

def happy?
    @happiness > 7 # hey should return `true` if the happiness or hygiene points exceed seven. Otherwise they should return false.
end

def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
    # accept a salary amount and add this to the person's bank account. Then the method should return the string "all about the benjamins".
end


def take_bath
   # @hygiene += 4
   self.hygiene +=4
    "♪ Rub-a-dub just relaxing in the tub ♫"
    # increment the person's hygiene points by four and return the string "♪ Rub-a-dub just relaxing in the tub ♫".
end


def work_out
    self.hygiene -= 3
    self.happiness += 2
    "♪ another one bites the dust ♫"
    # increment the person's happiness by two points, decrease their hygiene by three points, and return the Queen lyrics, "♪ another one bites the dust ♫".
end


def call_friend(friend)
   self.happiness += 3
   friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
    # accept another instance of the Person class, or "friend". The method should increment the caller and the callee's happiness points by three. 
    # If Stella calls her friend Felix, the method should return "Hi Felix! It's Stella. How are you?"
end

def start_conversation(friend, topic)
    if topic == "politics"
        friend.happiness -= 2
        self.happiness -= 2
        "blah blah partisan blah lobbyist"
    elsif
        topic == "weather"
            friend.happiness += 1
            self.happiness += 1
            "blah blah sun blah rain"
    else
        "blah blah blah blah blah"
        
    end 
end


# accept two arguments, the person to start a conversation with and the topic of conversation.
#   * If the topic is politics, both people get sadder and the method returns "blah blah partisan blah lobbyist".
#   * If the topic is weather, both people get a little happier and the method returns "blah blah sun blah rain".
#   * If the topic is not politics or weather, their happiness points don't change and the method returns "blah blah blah blah blah".



end

#anna = Person.new("anna")
#binding.pry
#0
