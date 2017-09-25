class Book
  @@on_shelf = []
  @@on_loan = []

  def initialize
    @on_loan = false
  end

  def borrow
    @on_loan = true
  end

  def return_to_libary
    @on_loan = false
  end

  def lent_out?
    if @on_loan
      puts "This book is on loan."
    else
      puts "This book is in stock"
    end
  end

  def due_date
    #2 weeks from now
    Time.now + (2*7*24*60*60)
  end

end

book = Book.new

puts book.lent_out?
puts book.borrow
puts book.lent_out?
puts book.return_to_libary
puts book.lent_out?

puts book.due_date
