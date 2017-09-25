class BankAccount
  @@interest_rate = 1.0
  @@account = []

  def initialize
    @balance = 0
  end

  def deposit(money_in)
    @balance += money_in
  end

  def withdraw(money_out)
    @balance -= money_out
  end

end

bank = BankAccount.new

puts bank.inspect
