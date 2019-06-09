class BankAccount

  def initialize(name)
    @name = name 
    @balance = 1000 
    @status = "open"
  end
  
  def deposit(money)
    @balance += money
  end
  
  def display_balance 
    "Your balance is "
  end
  
  
  
end
