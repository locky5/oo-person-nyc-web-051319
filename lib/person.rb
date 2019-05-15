class Person
  attr_accessor :bank_account, :happiness
  attr_reader :name
  
  def initialize(name, happiness = 8, hygiene = 8)
    @name = name
    @bank_account = 25
    if @happiness > 10 
      @happiness = 10
    elsif @happiness < 0 
      @happiness = 0
    else
      @happiness = happiness
    end
  end
  
end