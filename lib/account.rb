class Account

  attr_reader :balance

  def initialize(balance = 0)
    @balance = balance
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    raise 'Error: Insufficient funds' if (@balance - amount).negative?

    @balance -= amount
  end

end
