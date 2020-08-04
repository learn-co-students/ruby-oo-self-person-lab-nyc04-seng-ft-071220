require "pry"

class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(person_happiness)
        if person_happiness > 10 
            @happiness = 10
        elsif person_happiness < 0
            @happiness = 0
        else
            @happiness = person_happiness
        end
    end

    def hygiene=(person_hygiene)
    
        @hygiene = person_hygiene
        if @hygiene > 10

            num = person_hygiene - 10 
            @hygiene -= num

        elsif @hygiene < 0
            @hygiene = 0
        end
        @hygiene
    end

    def happy?
        if @happiness > 7
            true
        else
            false
        end
    end

    def clean?
        if @hygiene > 7
            true
        else
            false
        end
    end

    def get_paid(pay)
        @bank_account += pay
        'all about the benjamins'
    end

    def take_bath
        hygiene=((self.hygiene+=4)) 
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        hygiene=((self.hygiene-=3)) 
        happiness=((self.happiness+=2))
        "♪ another one bites the dust ♫"
    end

    def call_friend(another_person)
        happiness=((self.happiness+=3))
        happiness=((another_person.happiness+=3))
        "Hi #{another_person.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(another_person,talking_topic)
        if talking_topic == "politics"
            happiness=((self.happiness-=2))
            happiness=((another_person.happiness-=2))
            'blah blah partisan blah lobbyist'
        elsif talking_topic == "weather"
            happiness=((self.happiness+=1))
            happiness=((another_person.happiness+=1))
            'blah blah sun blah rain'
        else
            'blah blah blah blah blah'
        end
    end
end
