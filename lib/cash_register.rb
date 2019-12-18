class CashRegister
  attr_accessor :total, :discount
  @@cart = []

  def initialize(discount = 0.0)
    @total = 0.0
    @discount = discount
  end

  def add_item(item, price, num = 1)
    @total += (price * num)
    @@cart << item
  end

  def apply_discount
    if @discount > 0
      @total *= (1 - (@discount / 100.0))
      "After the discount, the total comes to $#{@total.round}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @@cart
  end

  def void_last_transaction
  end

end
