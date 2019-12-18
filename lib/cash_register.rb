class CashRegister
  attr_accessor :total, :discount
  @@cart = []

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def self.add_item(item, price, num = 1)
    @total += (price * num)
  end
  
end
