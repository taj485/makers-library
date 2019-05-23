class Member
  attr_reader :id_number, :name, :checked_out_items, :checked_out_books

  def initialize(id_number, name)
    @id_number = id_number
    @name = name
    @checked_out_items = []
    @checked_out_books = []
  end

  def check_out(item)
    checked_out_items.push(item)
  end

  def return_item(item)
    raise 'Item has not been checked out!' if !checked_out_items.include?(item)
    checked_out_items.delete(item)
  end

  def assign_book(book)
    @checked_out_books << book
  end

  def return_book(book)
    @checked_out_books.delete(book)
  end

end
