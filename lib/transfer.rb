class Transfer
  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, amount)
    @sender, @receiver, @amount, @status = sender, receiver, amount, "pending"
  end

  def valid?
    self.sender.valid? && self.receiver.valid? && self.status == "pending" ? true : false
  end

  def execute_transaction
    if self.valid?
      self.sender.balance -= amount
      self.receiver.deposit(amount)
      self.status = "executed"
    else
      puts "The sender's account is invalid."
    end
  end

  def reverse_transfer
    self.new(self.receiver, self.sender, self.amount)
    self.execute_transcation
  end

end
