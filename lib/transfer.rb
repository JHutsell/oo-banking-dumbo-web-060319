class Transfer
  # your code here
  attr_reader :sender, :receiver, :amount
  attr_accessor :status
  
  def initialize(sender, receiver, amount)
    @sender = sender 
    @receiver = receiver 
    @amount = amount
    @status = "pending"
  end 
  
  def valid?
    @sender.valid? && @receiver.valid?
  end
  
  def execute_transaction
    if @status != "complete"
      if valid? 
        @sender.balance -= @amount 
        @receiver.balance += @amount 
        @status = "complete"
        return nil
      else 
        @status = "rejected"
        "Transaction rejected. Please check your account balance."
      end
    end
  end
  
end
