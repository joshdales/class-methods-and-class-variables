class Book
  @@on_shelf = []
  @@on_loan = []

  def initialize
    @on_loan = false
    @due_date = nil
  end

  def borrow
    if @on_loan == false
      @due_date = Book.current_due_date
      @@on_shelf.delete(self)
      @@on_loan << self
      @on_loan = true
    else
      false
    end
  end

  def return_to_libary
    if @on_loan
      @due_date = nil
      @@on_loan.delete(self)
      @@on_shelf << self
      @on_loan = false
    else
      false
    end
  end

  def lent_out?
    if @on_loan
      true
    else
      false
    end
  end

  def due_date
    Time.at(@due_date)
  end

  def self.create
    new_book = Book.new
    @@on_shelf << new_book
    new_book
  end

  def self.current_due_date
    Time.now + (2*7*24*60*60)
  end

  def self.on_loan?
    @@on_loan
  end

  def self.on_shelf?
    @@on_shelf
  end

end

book = Book.create
book.borrow
puts Book.on_shelf?
puts book.inspect

puts book.due_date
book.return_to_libary
puts book.inspect
