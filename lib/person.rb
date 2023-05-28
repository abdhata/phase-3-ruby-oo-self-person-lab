# your code goes here
class Person
    attr_reader :name, :bank_account, :happiness, :hygiene
  
    MAX_HAPPINESS = 10
    MAX_HYGIENE = 10
    MIN_HAPPINESS = 0
    MIN_HYGIENE = 0
    INITIAL_BANK_ACCOUNT = 25
  
    def initialize(name)
      @name = name
      @bank_account = INITIAL_BANK_ACCOUNT
      @happiness = 8
      @hygiene = 8
    end
  
    def bank_account=(amount)
      @bank_account = amount
    end
  
    def happiness=(points)
      @happiness = limit_value(points, MAX_HAPPINESS, MIN_HAPPINESS)
    end
  
    def hygiene=(points)
      @hygiene = limit_value(points, MAX_HYGIENE, MIN_HYGIENE)
    end
  
    def happy?
      happiness > 7
    end
  
    def clean?
      hygiene > 7
    end
  
    def get_paid(amount)
      self.bank_account += amount
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
    end
  
    def start_conversation(person, topic)
      case topic
      when "politics"
        self.happiness -= 2
        person.happiness -= 2
        "blah blah partisan blah lobbyist"
      when "weather"
        self.happiness += 1
        person.happiness += 1
        "blah blah sun blah rain"
      else
        "blah blah blah blah blah"
      end
    end
  
    private
  
    def limit_value(value, max, min)
      if value > max
        max
      elsif value < min
        min
      else
        value
      end
    end
  end
  