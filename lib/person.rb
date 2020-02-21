require 'pry'

class Person

    attr_accessor :bank_account, :happiness
    attr_reader :name

    def initialize(name)
     @name = name
     @bank_account = 25
     @happiness = 8
     @hygiene = 8
    end 

    def happiness
        if @happiness > 10
            @happiness = 10
        end
        if @happiness < 0
            @happiness = 0
        end

        @happiness  
    end

    def happiness=(new_happiness)
        @happiness = new_happiness
    end

    def hygiene
        if @hygiene > 10
            @hygiene = 10
        end
        if @hygiene < 0
            @hygiene = 0
        end

        @hygiene
    end

    def hygiene=(new_hygiene)
        @hygiene = new_hygiene
    end

    def happy?
        if @happiness > 7
            return true
        else 
            return false
        end
    end

    def clean?
        if @hygiene > 7
            return true
        else 
            return false
        end
    end 

    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene= hygiene + 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene = hygiene - 3
        self.happiness= happiness + 2
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        friend.happiness += 3
        self.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
          friend.happiness -= 2
          self.happiness -=2
          "blah blah partisan blah lobbyist"
        elsif topic == "weather"
          friend.happiness += 1
          self.happiness += 1
          "blah blah sun blah rain"
        else
          "blah blah blah blah blah"
        end
      
    end

end

