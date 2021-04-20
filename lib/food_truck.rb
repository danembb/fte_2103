class FoodTruck
  attr_reader :name,
              :inventory

  def initialize(name)
    @name = name
    @inventory = {}
  end

  def check_stock(inventory_item)
    #check stock needs to: create a new key/value pair
    #for each existing (and new) item instance that is equal to 0.
    Item.new(item_properties).default = 0
  end
end
