class MemberList
  attr_reader :members

  def initialize(member_class = Member)
    @members = []
    @member_class = member_class
  end

  def add(id, name)
    members.push(@member_class.new(id, name))
  end

  def remove(id, name)
    members.delete(id)
    members.delete(name)
  end
end
