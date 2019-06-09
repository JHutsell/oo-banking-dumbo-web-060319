class BankAccount

  def initialize(name)
    @name = name 
    @bank_account = 1000 
    @status = "open"
  end
  
  def deposit(money)
    @bank_account += money
  end
  
  
  
end
