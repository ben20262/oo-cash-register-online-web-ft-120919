class CashRegister
  attr_accessor :total, :discount
  @@cart = []

  def initialize(discount = 0.0)
    @total = 0.0
    @discount = discount
  end

  def add_item(item, price, num = 1)
    @total += (price * num)
  end

  def apply_discount
    @total *= (1 - (@discount / 100.0))
    "After the discount, the total comes to $#{@total.round}."
  end

end
