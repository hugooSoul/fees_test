require 'fees/calculator'

class Fees

  MAX_TICKETS_ALLOWED = 10

  def self.reservation(tickets = 0, method = "card", new_fee = 0, user_id = 0, event_id = 0)

    if new_fee != 0 && ( user_id != 0 || event_id != 0 )
      if user_id != 0 && event_id != 0
        puts "the new fees just can apply for the user or the event, you must to choose only one of it."
      else

        if tickets > MAX_TICKETS_ALLOWED
          puts "The max number of tickets per person are 10."
        elsif tickets == 0
          puts "Enter the amount of ticket that you want."
        else
          if method == 'bank'
            if user_id != 0
              price = Calculator.new_fee_per_user(tickets, method, new_fee, user_id)
            else
              price = Calculator.new_fee_per_event(tickets, method, new_fee, event_id)
            end
          elsif method == "card"
            if user_id != 0
              price = Calculator.new_fee_per_user(tickets, method, new_fee.to_f, user_id)
            else
              price = Calculator.new_fee_per_event(tickets, method, new_fee.to_f, event_id)
            end
          else
            puts "We can process your payment with this method."
          end
        end


      end
    else

      if tickets > MAX_TICKETS_ALLOWED
        puts "The max number of tickets per person are 10."
      elsif tickets == 0
        puts "Enter the amount of ticket that you want."
      else
        if method == 'bank'
          price = Calculator.reservation(tickets, method)
        elsif method == "card"
          price = Calculator.reservation(tickets, method)
        else
          puts "We can process your payment with this method."
        end
      end

    end

  end

end
