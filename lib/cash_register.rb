class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @items = []
    @discount = discount
  end

  def add_item(title, price, quantities = 1)
    @total += (price * quantities)
    @last_transaction = (price * quantities)
    if quantities == 1
        @items << title
    else
      quantities.times do
        @items << title
      end
    end
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total = @total - ((@total * @discount) / 100)
      "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last_transaction
    @total
  end
end
