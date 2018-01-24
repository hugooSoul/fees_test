require 'fees/calculator'

class Fees

  MAX_TICKETS_ALLOWED = 10
  TICKET_PRICE = 500
  CARD_PAYMENT = 3.5
  BANK_PAYMENT = 10

  def self.reservation(tickets = 0, method = "card", charge = 0)
    if tickets > MAX_TICKETS_ALLOWED
      puts "The max number of tickets per person are 10."
    elsif tickets == 0
      puts "Enter the amount of ticket that you want."
    else
      if method == 'bank'
        if charge == 0
          charge = BANK_PAYMENT
        else
          charge = charge
        end
        price = Calculator.new(tickets, method, charge, TICKET_PRICE)
        price.reservation
      elsif method == "card"
        if charge == 0
          charge = CARD_PAYMENT
        else
          charge = charge
        end
        price = Calculator.new(tickets, method, charge, TICKET_PRICE)
        price.reservation
      else
        puts "We can process your payment with this method."
      end
    end
  end

end
