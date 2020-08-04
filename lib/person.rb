# your code goes here
class Person

    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name)
        @name=name
        @bank_account = 25
        @hygiene = 8
        @happiness = 8
    end

    def happiness
        @happiness.clamp(0,10)
    end

    def hygiene
        @hygiene.clamp(0,10)
    end

    def clean?
        if @hygiene>7
            true
        else
            false
        end
    end

    def happy?
        if @happiness>7
            true
        else
            false
        end
    end

    def get_paid(salary)
        @bank_account+=salary
        'all about the benjamins'
    end

    def take_bath
        self.hygiene= (@hygiene+4)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness = (@happiness+2)
        self.hygiene = (@hygiene-3)
        "♪ another one bites the dust ♫"
    end

    def call_friend(name)
        self.happiness+=3
        name.happiness+=3
        "Hi #{name.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(name,topic)
        if topic == "politics"
            self.happiness-=2
            name.happiness-=2
            return 'blah blah partisan blah lobbyist'
        elsif topic == "weather"
            self.happiness+=1
            name.happiness+=1
            return 'blah blah sun blah rain'
        else
            return 'blah blah blah blah blah'
        end
    end
end