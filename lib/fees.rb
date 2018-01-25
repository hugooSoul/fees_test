require 'fees/calculator'

class Fees

  MAX_TICKETS_ALLOWED = 10

  def self.reservation(tickets = 0, method = "card", charge=0)
    if tickets > MAX_TICKETS_ALLOWED
      puts "The max number of tickets per person are 10."
    elsif tickets == 0
      puts "Enter the amount of ticket that you want."
    else
      if method == 'bank'
        price = Calculator.new(tickets, method, charge)
        price.reservation
      elsif method == "card"
        price = Calculator.new(tickets, method, charge.to_f)
        price.reservation
      else
        puts "We can process your payment with this method."
      end
    end
  end

end
