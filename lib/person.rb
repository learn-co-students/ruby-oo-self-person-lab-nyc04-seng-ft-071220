require 'pry'
class Person

attr_accessor :bank_account, :happiness, :hygiene 
attr_reader :name

def initialize(name_arg) 
    @name = name_arg
    @bank_account = 25 
    @happiness = 8
    @hygiene = 8 
end
def happiness
    @happiness.clamp(0,10)
end 

def hygiene
    @hygiene.clamp(0,10)
end 

def clean?
   if @hygiene > 7
     true
   else 
    false
 end 
end 
def happy?
   if @happiness > 7 
     true 
   else 
     false 
  end 
end

def get_paid(salary_amount) 
    self.bank_account += salary_amount
     "all about the benjamins"
end 

def take_bath
    self.hygiene += 4
     "♪ Rub-a-dub just relaxing in the tub ♫"
end 

def work_out 
    self.hygiene -= 3
    self.happiness += 2
    "♪ another one bites the dust ♫"
end 

def call_friend(friend)
   self.happiness += 3
   friend.happiness += 3
   "Hi #{friend.name}! It's #{self.name}. How are you?"
   #binding.pry
 end
 
def start_conversation(friend, topic)
   if topic == "politics"
     self.happiness -= 2
     friend.happiness -=2
     "blah blah partisan blah lobbyist"
   elsif  
    topic == "weather"
     self.happiness += 1
     friend.happiness += 1
     "blah blah sun blah rain"
   else
     "blah blah blah blah blah"
  end 
 end 
end 