class CashRegister
  attr_accessor :total, :discount
  @@cart = []

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(item, price, num = 1)
    @total += (price * num)
  end

  def apply_discount
    new_total = @total / @discount
    "After the discount, the total comes to $#{new_total}."
  end

end
