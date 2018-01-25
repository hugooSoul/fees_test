#Fees

With this module, you can make your tickets reservation.

##Gettin' started

Install the 'fees' package on your system

```ruby
gem install fees
```

Require 'fee' in your file

```ruby
require 'fees'
```

##Usage

```ruby
Fees.reservation(tickets_number, method=['card', 'bank'], charge)
```

1. There is a default Payment method which is "card".
2. The max number of tickets_number per person is equal to 10,
3. tickets_number must to be greater than 0.
4. charge is the custom percentage, could be an Integer or a Float
5. Default percentage for card is 3.5 and for bank is $10.
6. If you want to change the 'charge' value must to specify the method to avoid an error.
