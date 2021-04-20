class Item
  attr_reader :name,
              :price

  def initialize(item_properties)
    @name = item_properties[:name]
    #this should take .to_f, but it's not working...
    #why is this showing me ordinal values.
    @price = item_properties[:price]
  end
end
