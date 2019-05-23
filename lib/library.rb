class Library
  attr_reader :member_list
  attr_reader :catalog

  def initialize(member_list_class = MemberList)
    @member_list = member_list_class.new
    @catalog = []
  end

  def add_member(id, name)
    member_list.add(id, name)
  end

  # def view_members
  #    @member_list.members
  # end

  def assign_book(item)
    @memeber_list.assign_book(book)
  end

  def add_book(book)
    @catalog << book
  end
end
