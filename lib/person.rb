class Person
  attr_accessor :bank_account, :happiness
  attr_reader :name
  
  def initialize(name, happiness = 8)
    @name = name
    @bank_account = 25
    @happiness = happiness
  end
  
end