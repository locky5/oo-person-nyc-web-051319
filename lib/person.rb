class Person
  attr_accessor :bank_account, :happiness, :hygiene, :salary
  attr_reader :name
  
  def initialize(name, happiness = 8, hygiene = 8)
    @name = name
    @bank_account = 25
    @happiness = happiness # 0 < happiness < 10
    @hygiene = hygiene # 0 <hygiene < 10 
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
    @hygiene += 4 # can't go over 10 for now 
    "♪ Rub-a-dub just relaxingin the tub ♫"
  end
  
  def work_out
    @hygiene -= 3
    @happiness += 2 
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
  end
  
  def start_conversation(person, topic)
    if topic == "politics"
      if person.happiness >= 2 
        person.happiness -= 2
      elsif person.happiness >= 2
        self.happiness -= 2
      else
        person.happiness
        self.happiness
      end
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      if person.happiness < 10
        person.happiness += 1 
      elsif self.happiness < 10
        self.happiness += 1
      else 
        person.happiness
        self.happiness
      end
      "blah blah sun blah rain"
    else 
      "blah blah blah blah blah"
    end
  end
end