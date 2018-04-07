class CashRegister
  attr_accessor :total, :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantities = 1)
    @total += (price * quantities)
  end

  def apply_discount
    @total = @total - ((@total * @discount) / 100)
    puts "After the discount, the total comes to $#{@total}."
  end
end
