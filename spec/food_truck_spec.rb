require './lib/item'
require './lib/food_truck'

RSpec.describe FoodTruck do
  describe 'instantiation' do
    it '::new' do
      food_truck = FoodTruck.new("Rocky Mountain Pies")

      expect(food_truck).to be_an_instance_of(FoodTruck)
    end

    it '#has attributes' do
      food_truck = FoodTruck.new("Rocky Mountain Pies")

      expect(food_truck.name).to eq ("Rocky Mountain Pies")
      expect(food_truck.inventory).to be_an_instance_of(Hash)
    end
  end

  describe '#methods' do
    it '#check_stock' do
      food_truck = FoodTruck.new("Rocky Mountain Pies")
      item1 = Item.new({name: 'Peach Pie (Slice)', price: '$3.75'})
      item2 = Item.new({name: 'Apple Pie (Slice)', price: '$2.50'})

      expect(food_truck.check_stock(item1)).to eq 0
    end
  end
end
