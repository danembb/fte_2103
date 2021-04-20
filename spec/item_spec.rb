require './lib/item'

RSpec.describe Item do
  describe 'instantiation' do
    it '::new' do
      item1 = Item.new({name: 'Peach Pie (Slice)', price: '$3.75'}) #I see what you did here, testing our quotation mark continuity
      item2 = Item.new({name: 'Apple Pie (Slice)', price: '$2.50'})

      expect(item1).to be_an_instance_of(Item)
      expect(item2).to be_an_instance_of(Item)
    end

    it '#has attributes' do
      item1 = Item.new({name: 'Peach Pie (Slice)', price: '$3.75'})
      item2 = Item.new({name: 'Apple Pie (Slice)', price: '$2.50'})

      expect(item2.name).to be ('Apple Pie (Slice)')
      expect(item2.price).to be 2.50
    end
  end
end
