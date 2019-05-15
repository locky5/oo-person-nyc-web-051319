class Person
  attr_accessor :bank_account, :happiness, :hygiene
  attr_reader :name
  
  def initialize(name, happiness = 8, hygiene = 8)
    @name = name
    @bank_account = 25
    @happiness = happiness # 0 < happiness < 10
    @hygiene = hygiene # 0 <hygiene < 10 
  end
  
end