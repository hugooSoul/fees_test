class Calculator

  def initialize(tickets, method, charge, price)
    @tickets = tickets
    @charge = charge
    @method = method
    @price = price
  end

  def reservation
    if @method == "bank"
      return @tickets * @price + @charge
    else
      percentage = @charge / 100
      tickets_amount = @tickets * @price
      to_sum = tickets_amount * percentage
      result = tickets_amount + to_sum
      return result.to_f
    end
  end

end
