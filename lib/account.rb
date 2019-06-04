class Account

  attr_reader :balance, :ledger

  def initialize(balance = 0)
    @balance = balance
    @ledger = []
  end

  def deposit(amount)
    @balance += amount
    @ledger.push(amount)
  end

  def withdraw(amount)
    raise 'Error: Insufficient funds' if (@balance - amount).negative?

    @balance -= amount
    @ledger.push(amount)
  end

end
