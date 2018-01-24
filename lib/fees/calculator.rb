class Calculator

  def initialize(tickets, method, charge, price)
    @tickets = tickets
    @charge = charge
    @method = method
    @price = price
  end

  def reservation
    case @method
    when "bank"
      return @tickets * @price + @charge
    else
      return @tickets * @price * @charge
    end
  end

end
