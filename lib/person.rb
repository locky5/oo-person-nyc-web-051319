class Person
  attr_accessor :bank_account, :happiness
  attr_reader :name
  
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
  end
  
end