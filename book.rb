class Book
  @@on_shelf = []
  @@on_loan = []

  def due_date
    #2 weeks from now
    Time.now + (2*7*24*60*60)
  end
  
end

book = Book.new

puts book.due_date
