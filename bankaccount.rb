class BankAccount
  @@interest_rate = 1.0
  @@accounts = []

  def initialize
    @balance = 0
  end

  def deposit(money_in)
    @balance += money_in
  end

  def withdraw(money_out)
    @balance -= money_out
  end

  def self.create
    new_account = BankAccount.new
    @@accounts << new_account
    new_account
  end


end

my_account = BankAccount.create

your_account = BankAccount.create
puts my_account.inspect

my_account.deposit(100)
your_account.deposit(50)
puts my_account.inspect
