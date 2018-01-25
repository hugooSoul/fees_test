# Fees

With this module, you can make your tickets reservation.

## Gettin' started

Install the 'fees' package on your system

```ruby
gem install fees
```

Require 'fee' in your file

```ruby
require 'fees'
```

## Usage

```ruby
Fees.reservation(tickets_number, method, new_fee, user_id, event_id)
```

1. There is a default Payment method which is "card", but you also can pass "bank".
2. The max number of tickets_number per person is equal to 10,
3. tickets_number must to be greater than 0.
4. Default percentage for card is 3.5
5. Default fee for bank is $10.

The user_id and event_id can't be greater than 0 at the same time, cause the new fee is apply o per User or per Event.


If an common user buy some tickets you can use something like:
```ruby
Fees.reservation(3, "card")
```

or

```ruby
Fees.reservation(5, "bank")
```

If you want to apply a custom fee for an user, must to follow the next rules:

```ruby
Fees.reservation(5, "card", 4, 5, 0)
```

In case you want to apply a custom fee for an event, must to follow the next rules:

```ruby
Fees.reservation(5, "card", 4, 0, 8)
```
