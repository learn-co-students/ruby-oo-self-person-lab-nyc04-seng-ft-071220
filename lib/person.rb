# your code goes here
require 'pry'

# - First you need to create a person class that 
# - is initialized with a name 
# - the name cannot be changed.

class Person

    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene
    
    def initialize(name_arg)
        @name = name_arg
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness
        # if @happiness < 0
        #     @happiness = 0
        # elsif @happiness > 10
        #     @happiness = 10
        # else 
        #     @happiness
        # end

        @happiness = 0 if @happiness < 0
        @happiness = 10 if @happiness > 10
        @happiness
    end

    def hygiene
        # binding.pry
        @hygiene = 0 if @hygiene < 0
        @hygiene = 10 if @hygiene > 10
        @hygiene
    end

    def happy?
        # binding.pry
        @happiness > 7             #  calling the instance variable directly
        # self.happiness > 7       using attr_ macro method that returns the instance variable of @happiness
        # happiness > 7            using "method lookup chain" to assume what self is and then calls the appropriate getter/setter method and returns the appropriate instance variable
    end

    def clean?
        @hygiene > 7
    end

    # accepts an argument of salary (FAILED - 1)
# increments bank_account by the salary (FAILED - 2)
# returns 'all about the benjamins' (FAILED - 3)

    def get_paid(salary)
        # binding.pry
        self.bank_account += salary
        'all about the benjamins'
    end

    # #take_bath
# makes the person cleaner by 4 points (FAILED - 4)
# returns a song (FAILED - 5)
# can't make a person cleaner by 10 points (hint: use the custom #hygiene= method) (FAILED - 6)
# calls on the #hygiene= method to increment hygiene (FAILED - 7)

    def take_bath
        self.hygiene += 4
        '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    # makes the person dirtier by 3 points (FAILED - 8)
# never makes the person have negative dirty points
#   (hint: use the #hygiene= method) (FAILED - 9)
# calls on the #hygiene= method to decrease hygiene (FAILED - 10)
# makes the person happier by 2 points (FAILED - 11)
# never makes the person have more than 10 happiness points
#   (hint: use the #happiness= method) (FAILED - 12)
# calls on the #happiness= method to increment happiness (FAILED - 13)
# returns Queen lyrics (FAILED - 14)
    def work_out
        self.hygiene -= 3
        self.happiness += 2
        '♪ another one bites the dust ♫'
    end


# #call_friend
# accepts one argument, an instance of the Person class (FAILED - 15)
# makes the person calling happier by three points (FAILED - 16)
# makes the friend happier by three points (FAILED - 17)
# never makes the happiness of either party exceed 10
#   (hint: use the cutom #happiness= method) (FAILED - 18)
# calls on the #happiness= method to increment happiness (FAILED - 19)
# returns a string that reflects the caller's side of the conversation (FAILED - 20)

def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    # binding.pry
    "Hi #{friend.name}! It's #{self.name}. How are you?"
end

# #start_conversation
def start_conversation(person, topic)
    # binding.pry
    if topic.downcase == "politics"
        person.happiness -= 2
        self.happiness -= 2
        'blah blah partisan blah lobbyist'
    elsif topic.downcase == "weather"
        person.happiness += 1 #cmd + d to choose the next instance in vs code
        self.happiness += 1
        'blah blah sun blah rain'
    else 
        'blah blah blah blah blah'
    end
end

# accepts two arguments, a person to strike a convo with and a topic (FAILED - 21)
# topic: politics
#   returns 'blah blah partisan blah lobbyist' if the topic is politics (FAILED - 22)
#   if topic is politics, it makes both people in the convo two points less happy (FAILED - 23)
#   never makes either party less than 0 points happy (never negative)
#     (hint: use your #happiness= method) (FAILED - 24)
#   calls on the #happiness= method (FAILED - 25)
# topic: weather
#   returns 'blah blah sun blah rain' if the topic is weather (FAILED - 26)
#   if topic is weather, it makes both people in the convo one point more happy (FAILED - 27)
#   never makes either party more than 10 points happy
#     (hint: use your #happiness= method) (FAILED - 28)
#   calls on the #happiness= method (FAILED - 29)
# topic: other
#   returns 'blah blah blah blah blah' if the topic is not politics or weather (FAILED - 30)
#   if topic is not politics or weather, it doesn't affect happiness (FAILED - 31)


end









# ##### Non-attribute defining instance methods

# 1. The `clean?` and `happy?` methods are pretty similiar: they should return `true` if the happiness or hygiene points exceed seven. Otherwise they should return false.

# 2. The `get_paid` method should accept a salary amount and add this to the person's bank account. Then the method should return the string "all about the benjamins".

# 3. The `take_bath` method should increment the person's hygiene points by four and return the string "♪ Rub-a-dub just relaxing in the tub ♫".

# 4. The `work_out` method should increment the person's happiness by two points, decrease their hygiene by three points, and return the Queen lyrics, "♪ another one bites the dust ♫".

# 5. The `call_friend` method should accept another instance of the Person class, or "friend". The method should increment the caller and the callee's happiness points by three. If Stella calls her friend Felix, the method should return "Hi Felix! It's Stella. How are you?"

# 6. Finally, the `start_conversation` method should accept two arguments, the person to start a conversation with and the topic of conversation.
#   * If the topic is politics, both people get sadder and the method returns "blah blah partisan blah lobbyist".
#   * If the topic is weather, both people get a little happier and the method returns "blah blah sun blah rain".
#   * If the topic is not politics or weather, their happiness points don't change and the method returns "blah blah blah blah blah".



## Instructions
# - First you need to create a person class that is initialized with a name that cannot be changed.
# - Each instance of class `Person`should be able to remember their name
# - Each instance of  class `Person` should start with $25 in their bank accounts
# - Each instance of  class `Person` should start with eight happiness points
# - Each instance of  class `Person` should start with eight hygiene points
# - The happiness and hygiene points should be able to change, however the maximum and minimum points for both happiness and hygiene should be 10 and  0 respectively
# - The amount in the bank account should also be able to change, though it has no max or min.




# #take_bath
# makes the person cleaner by 4 points (FAILED - 4)
# returns a song (FAILED - 5)
# can't make a person cleaner by 10 points (hint: use the custom #hygiene= method) (FAILED - 6)
# calls on the #hygiene= method to increment hygiene (FAILED - 7)
# #work_out
# makes the person dirtier by 3 points (FAILED - 8)
# never makes the person have negative dirty points
#   (hint: use the #hygiene= method) (FAILED - 9)
# calls on the #hygiene= method to decrease hygiene (FAILED - 10)
# makes the person happier by 2 points (FAILED - 11)
# never makes the person have more than 10 happiness points
#   (hint: use the #happiness= method) (FAILED - 12)
# calls on the #happiness= method to increment happiness (FAILED - 13)
# returns Queen lyrics (FAILED - 14)

# #call_friend
# accepts one argument, an instance of the Person class (FAILED - 15)
# makes the person calling happier by three points (FAILED - 16)
# makes the friend happier by three points (FAILED - 17)
# never makes the happiness of either party exceed 10
#   (hint: use the cutom #happiness= method) (FAILED - 18)
# calls on the #happiness= method to increment happiness (FAILED - 19)
# returns a string that reflects the caller's side of the conversation (FAILED - 20)

# #start_conversation
# accepts two arguments, a person to strike a convo with and a topic (FAILED - 21)
# topic: politics
#   returns 'blah blah partisan blah lobbyist' if the topic is politics (FAILED - 22)
#   if topic is politics, it makes both people in the convo two points less happy (FAILED - 23)
#   never makes either party less than 0 points happy (never negative)
#     (hint: use your #happiness= method) (FAILED - 24)
#   calls on the #happiness= method (FAILED - 25)
# topic: weather
#   returns 'blah blah sun blah rain' if the topic is weather (FAILED - 26)
#   if topic is weather, it makes both people in the convo one point more happy (FAILED - 27)
#   never makes either party more than 10 points happy
#     (hint: use your #happiness= method) (FAILED - 28)
#   calls on the #happiness= method (FAILED - 29)
# topic: other
#   returns 'blah blah blah blah blah' if the topic is not politics or weather (FAILED - 30)
#   if topic is not politics or weather, it doesn't affect happiness (FAILED - 31)