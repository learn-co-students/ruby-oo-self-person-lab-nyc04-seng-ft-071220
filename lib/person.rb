# your code goes here
require 'pry'
class Person

    attr_reader :name 
    # attr_writer :happiness, :hygiene
     attr_accessor :bank_account, :happiness, :hygiene

    def initialize (name_arg)
        @name = name_arg
        @bank_account = 25
        @happiness = 8
        @hygiene = 8

    end

    def happiness=(num)
        @happiness = num

    

end

who = Person.new("Blake")

# binding.pry
# 0

