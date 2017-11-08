class BankAccount
  attr_accessor :name, :status, :balance

  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end

  def deposit(amount)
    self.balance += amount
  end

  def display_balance
  end

  def valid?
    self.status == "open" && self.balance > 0 ? true : false
  end

  def close_account
    self.status = "closed"
  end
end
