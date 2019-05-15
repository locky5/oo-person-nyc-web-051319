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
    if self.hygiene < 7
      self.hygiene= += 4
    else 
      self.hygiene= = 10 
    end
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end
  
  def work_out
    if self.hygiene >= 3 
      self.hygiene -= 3
    else
      self.hygiene = 0
    end
    if self.happiness < 8
      self.happiness += 2
    else 
      self.happiness = 10
    end
    "♪ another one bites the dust ♫"
  end
  
  def call_friend(person)
    if person.happiness < 8
      person.happiness += 3
    else
      person.happiness = 10 
    end
    if self.happiness < 8   
      self.happiness += 3
    else
      self.happiness = 10
    end
    "Hi #{person.name}! It's #{self.name}. How are you?"
  end
  
  def start_conversation(person, topic)
    if topic == "politics"
      if person.happiness >= 2 
        person.happiness -= 2
      else 
        person.happiness = 0
      end
      if self.happiness >= 2 
        self.happiness -= 2 
      else 
        self.happiness = 0 
      end
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      if person.happiness < 10
        person.happiness += 1 
      end 
      if self.happiness < 10 
        self.happiness += 1 
      end
      "blah blah sun blah rain"
    else 
      "blah blah blah blah blah"
    end
  end
end