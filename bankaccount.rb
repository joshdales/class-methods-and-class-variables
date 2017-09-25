class BankAccount
  @@interest_rate = 1.0
  @@accounts = []

  def initialize
    @balance = 0
  end

  def balance
    @balance
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

  def self.total_funds
    total = 0
    @@accounts.each do |single_account|
      total += single_account.balance
    end
  return total
  end

end

my_account = BankAccount.create
your_account = BankAccount.create
puts my_account.balance
puts BankAccount.total_funds
my_account.deposit(200)
your_account.deposit(1000)
puts my_account.balance
puts your_account.balance
puts BankAccount.total_funds
