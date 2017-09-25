class Book
  @@on_shelf = []
  @@on_loan = []

  def initialize(title, author, isbn)
    @on_loan = false
    @due_date = nil
    @title = title
    @author = author
    @ISBN = isbn
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

  def self.create(title, author, isbn)
    new_book = Book.new(title, author, isbn)
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

  def self.available
    @@on_shelf
  end

  def self.borrowed
    @@on_loan
  end

  def self.browse
    @@on_shelf.sample
  end

  def self.overdue_books
    @@on_loan.each do |book|
      if @due_date < Time.now + (2*7*24*60*60)
        return book
      end
    end
  end

end


sister_outsider = Book.create("Sister Outsider", "Audre Lorde", "9781515905431")
aint_i = Book.create("Ain't I a Woman?", "Bell Hooks", "9780896081307")
if_they_come = Book.create("If They Come in the Morning", "Angela Y. Davis", "0893880221")
puts Book.on_shelf?

puts Book.browse.inspect
puts Book.browse.inspect
puts Book.browse.inspect

aint_i.borrow
puts Book.on_shelf?
puts aint_i.inspect

puts aint_i.due_date
aint_i.return_to_libary
puts sister_outsider.inspect
puts aint_i.inspect
