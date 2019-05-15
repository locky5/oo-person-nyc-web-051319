class Person
  attr_accessor :bank_account
  attr_reader :name
  
  def initialize(name)
    @name = name
    @bank_account = 25
  end
  
end