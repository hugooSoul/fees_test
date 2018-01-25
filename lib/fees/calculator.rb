class Calculator

  TICKET_PRICE = 500
  CARD_PAYMENT = 3.5
  BANK_PAYMENT = 10

  def self.reservation(tickets, method)
    if method == "bank"
      calc_bank(tickets, 0)
    else
      calc_card(tickets, 0)
    end
  end

  def self.new_fee_per_user(tickets, method, new_fee, user_id)
    if method == "bank"
      calc_bank(tickets, new_fee)
    else
      calc_card(tickets, new_fee)
    end
  end

  def self.new_fee_per_event(tickets, method, new_fee, event_id)
    if method == "bank"
      calc_bank(tickets, new_fee)
    else
      calc_card(tickets, new_fee)
    end
  end


  private

  def self.calc_bank(tickets, new_fee)
    if new_fee != 0
      return tickets * TICKET_PRICE + new_fee
    else
      return tickets * TICKET_PRICE + BANK_PAYMENT
    end
  end


  def self.calc_card(tickets, new_fee)
    if new_fee != 0
      percentage = new_fee / 100
    else
      percentage = CARD_PAYMENT / 100
    end

    tickets_amount = tickets * TICKET_PRICE
    to_sum = tickets_amount * percentage
    result = tickets_amount + to_sum
    return result.to_f
  end

end
