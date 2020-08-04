# your code goes here
class Person

    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    # First you need to create a person class that is initialized with a name that cannot be changed.
    # The happiness and hygiene points should be able to change, 
    # However the maximum and minimum points for both happiness and hygiene should be 10 and 0 respectively.
    # The amount in the bank account should also be able to change, though it has no max or min.

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(happiness)
        @happiness = happiness
        if @happiness > 10
            @happiness = 10
        elsif @happiness < 0
            @happiness = 0
        else
            @happiness
        end
    end

    def hygiene=(hygiene)
        @hygiene = hygiene
        if @hygiene > 10
            @hygiene = 10
        elsif @hygiene < 0
            @hygiene = 0
        else
            @hygiene
        end
    end

    #The clean? and happy? methods are pretty similiar: 
    #they should return true if the happiness or hygiene points exceed seven. 
    #Otherwise they should return false.

    def clean?
        if @hygiene > 7
            true
        else
            false
        end
    end

    def happy?
        if @happiness >7
            true
        else
            false
        end
    end

    #The get_paid method should accept a salary amount and add this to the person's bank account. 
    #Then the method should return the string "all about the benjamins".

    def get_paid(salary_amount)
        @bank_account += salary_amount
        "all about the benjamins"
        #return, not puts!
    end

    #The take_bath method should increment the person's hygiene points by four 
    #and return the string "♪ Rub-a-dub just relaxing in the tub ♫".

    def take_bath
        self.hygiene += 4 
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    #The work_out method should increment the person's happiness by two points, 
    #decrease their hygiene by three points, 
    #and return the Queen lyrics, "♪ another one bites the dust ♫".

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    #The call_friend method should accept another instance of the Person class, or "friend". 
    #The method should increment the caller and the callee's happiness points by three. 
    #If Stella calls her friend Felix, the method should return "Hi Felix! It's Stella. How are you?"

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{name}. How are you?"
    end
    
    #Finally, the start_conversation method should accept two arguments, 
    #the person to start a conversation with and the topic of conversation.

    #If the topic is politics, both people get sadder 
    #and the method returns "blah blah partisan blah lobbyist".

    #If the topic is weather, both people get a little happier 
    #and the method returns "blah blah sun blah rain".

    #If the topic is not politics or weather, their happiness points don't change 
    #and the method returns "blah blah blah blah blah".

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
