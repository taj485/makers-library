require 'member'

describe Member do
  subject(:member) { described_class.new('12345', 'Bananaman') }

  it 'knows it\'s own membership number' do
    expect(member.id_number).to eq('12345')
  end

  it 'knows it\'s own name' do
    expect(member.name).to eq('Bananaman')
  end

  it 'initializes with no items checked out' do
    expect(member.checked_out_items).to eq([])
  end

  describe '#check_out' do
    it('adds the passed item to checked_out_items') do
      member.check_out('book')
      expect(member.checked_out_items).to include('book')
    end
  end

  describe '#return_item' do
    it('removes the passed item from checked_out_items') do
      member.check_out('book')
      member.return_item('book')
      expect(member.checked_out_items).to_not include('book')
    end

    it('thows an error if the passed item has not been checked out') do
      expect{ member.return_item('book') }.to raise_error('Item has not been checked out!')
    end
  end

    describe 'assign_book' do
      it 'can assign book to anyone in the member list' do
        member.assign_book(:book)
        expect(member.checked_out_books).to include(:book)
      end
    end

    describe 'return_book' do
      it 'can return a book from anyone in the member list' do
        member.return_book(:book)
        expect(member.checked_out_books).not_to include(:book)
      end
    end

end
