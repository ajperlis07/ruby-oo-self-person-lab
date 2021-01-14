require 'pry'

#- First you need to create a person class that is initialized with a name that cannot be changed.
class Person
 attr_reader :name
 attr_accessor :bank_account, :happiness, :hygiene
 def initialize(name_arg)
    @name = name_arg # remembers name through the instance variable
    @bank_account = 25
    @happiness = 8 
    @hygiene = 8
 end

def happiness #defined happiness as an instance variable to have range limits and values associated. we want this to be able to be changed
    if @happiness < 0 
        @happiness = 0 
    elsif @happiness > 10
        @happiness = 10
    else 
        @happiness
    end
    #short cut for same method: @happiness = 0 if @happiness < 0
    #@happines = 10 if @happiness > 10
    #@happiness
end

def hygiene #defined happiness as a method to use attr_accessor to be able to change the value of happiness
    @hygiene = 0 if @hygiene < 0 
    @hygiene = 10 if @hygiene > 10
    @hygiene
end

def happy?
    @happiness > 7 # calls the instance variable directly
    # can write this also as self.happiness > 7 <- using attr_macro method that returns the instance variable of @happiness
    #happiness > 7 <- using method lookup chain to assume what self is and the calls the appropriate getter/setter method and returns the variable
end

def clean?
    @hygiene > 7 
    # self.hygiene > 7 
    # hygiene > 7 
end

def get_paid(salary)
   self.bank_account += salary # this takes the class of Person and uses the bank_account and adds the salary
   return "all about the benjamins"
end

def take_bath #takes the class of person and uses current hygiene and increases by 4 per bath
    self.hygiene += 4 
    return "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out #takes the class of Person and uses both hygiene and happiness
    self.hygiene -= 3 #subtracts value points from hygiene
    self.happiness += 2 # increases happiness by pumping iron
    return "♪ another one bites the dust ♫"
end
 
def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
end

def start_conversation(person , topic)
    if topic == "politics"
        person.happiness -= 2
        self.happiness -= 2 
        return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
        person.happiness += 1
        self.happiness += 1
        return "blah blah sun blah rain"
    else
        return "blah blah blah blah blah"
    end
end

end

