# your code goes here

require 'pry'

class Person
    attr_reader :name   # no need for end!
    attr_accessor :bank_account, :happiness, :hygiene
    def initialize(name)    # only passing down "reader" currently -- only because it's immovable
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end     # any time you write end it's if it's a "function", similar to curly braces in JS
    def clean
        if self.hygiene > 7
            return true
        else self.hygiene < 8
            return false
        end
    end
    def happy
        if self.happiness > 7
            return true
        else self.happiness < 8
            return false
        end
    end
    def get_paid(amount)
        @amount = amount
        puts (self.bank_account + amount)
            return "all about the benjamins"
    end
    def take_bath
        puts (self.hygiene + 4)
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        puts (self.happiness + 2)
        puts (self.hygiene - 3)
        return "♪ another one bites the dust ♫"
    end
    def call_friend(friend)
        person2 = Person.new("#{friend}")
        puts (self.happiness + 3)
        puts (person2.happiness + 3)
        return "Hi #{person2.name}! It's Dereck. How are you?"
    end
    def start_conversation(topic, friend)
        person2 = Person.new("#{friend}")
        if topic = "politics"
            puts (self.happiness - 2)
            puts (person2.happiness - 2)
            return "blah blah partisan blah lobbyist"
        elsif topic = "weather"
            puts (self.happiness + 1)
            puts (person2.happiness + 1)
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end
end

person1 = Person.new("Dereck")

person1.bank_account=(145100)
person1.happiness=(9.5)
person1.hygiene=(5)

puts person1
    binding.pry

