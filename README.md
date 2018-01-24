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


## Usage

```ruby
Fees.reservation(tickets_number, method=['card', 'bank'])
```

1. There is a default Payment method witch is "card".
2. The max number of tickets_number per person is equal to 10,
3. tickets_number must to be greater than 0.
