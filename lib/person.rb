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
  
  def start_conversation(person, topic)
    if topic == "politics"
      "blah blah partisan blah lobbyist"
      person.@happiness -= 3
      self.@happiness -= 3
    elsif topic == "weather"
      "blah blah sun blah rain"
      person.@happiness += 1
      self.@happiness += 1 
  end
end