class Person
  attr_accessor :bank_account, :hygiene, :salary, :happiness
  attr_reader :name
  
  def initialize(name, happiness = 8, hygiene = 8)
    @name = name
    @bank_account = 25
    @happiness = happiness
    @hygiene = hygiene
  end
  
  def happiness=(value) # since we want to use happiness=
    @happiness = value 
    if @happiness < 0 
      @happiness = 0 
    elsif @happiness >= 10 
      @happiness = 10 
    end
  end
  
  def hygiene=(value) # since we want to use hygiene=
    @hygiene = value 
    if @hygiene < 0 
      @hygiene = 0 
    elsif @hygiene >= 10 
      @hygiene = 10 
    end
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
  
  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end
  
  def take_bath
    self.hygiene += 4 # limits were defined above
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end
  
  def work_out
    self.hygiene -= 3 # limits were defined above
    self.happiness += 2 # limits were defined above
    "♪ another one bites the dust ♫"
  end
  
  def call_friend(person)
    person.happiness += 3
    self.happiness += 3
    "Hi #{person.name}! It's #{self.name}. How are you?"
  end
  
  def start_conversation(person, topic)
    if topic == "politics"
      person.happiness -= 2
      self.happiness -= 2 
      end
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      person.happiness += 1 
      self.happiness += 1 
      "blah blah sun blah rain"
    else 
      "blah blah blah blah blah"
    end
  end
end