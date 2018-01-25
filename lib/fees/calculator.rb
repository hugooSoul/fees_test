class Calculator

  TICKET_PRICE = 500
  CARD_PAYMENT = 3.5
  BANK_PAYMENT = 10

  def initialize(tickets, method, new_fee)
    @tickets = tickets
    @charge = new_fee
    @method = method
  end

  def reservation
    if @method == "bank"
      if @charge == 0
        @charge = BANK_PAYMENT
      end
      return @tickets * TICKET_PRICE + @charge
    else
      if @charge == 0
        @charge = CARD_PAYMENT
      end
      percentage = @charge / 100
      tickets_amount = @tickets * TICKET_PRICE
      to_sum = tickets_amount * percentage
      result = tickets_amount + to_sum
      return result.to_f
    end
  end

end
