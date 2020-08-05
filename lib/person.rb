# your code goes here
require 'pry'
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
        @happiness = 0 if @happiness < 0
        @happiness = 10 if @happiness > 10
        @happiness

    end
    
    def hygiene
    @hygiene = 0 if @hygiene < 0
    @hygiene = 10 if @hygiene > 10
    @hygiene
    end


end

who = Person.new("Blake")

# binding.pry
# 0

