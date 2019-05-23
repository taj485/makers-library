require 'library'

describe Library do
  subject(:library)       { described_class.new(member_list_class) }
  let(:member_list_class) { double(:member_list_class, :new => member_list)}
  let(:member_list)       { double(:member_list) }
  let(:book)              { double(:Book) }

  describe 'add_member' do
    it('tells the member list to add a member') do
      expect(member_list).to receive(:add)
      library.add_member('12345', 'Bananaman')
    end
  end

  # describe 'view_members' do
  #   it "tells member list to view all members" do
  #     library.add_member('12345', 'Bananaman')
  #     expect(library.view_members).to include('12345', 'Bananaman')
  #   end
  # end
  #
  #   describe 'assign_book' do
  #     it "tells member list to assign book" do
  #     expect(library).to receive(:assign_book)
  #     end
  # end

  describe 'add_book' do
    it "can add to catalog" do
      library.add_book(:book)
      expect(library.catalog).to include(:book)
    end
  end
end
