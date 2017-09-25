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

  def self.create
    new_account = BankAccount.new
    @@account << new_account
  end

  def self.see_all_accounts
    @@account
  end

end

my_account = BankAccount.create
puts my_account.inspect

your_account = BankAccount.create
puts BankAccount.see_all_accounts
