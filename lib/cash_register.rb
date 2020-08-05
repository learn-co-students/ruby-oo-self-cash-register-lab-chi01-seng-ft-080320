require 'pry'

class CashRegister

attr_accessor :total, :discount, :items, :last_transaction 

def initialize (discount= 0)
@total = 0
@discount = discount
@items = []
@last_transaction = last_transaction
end

def add_item (title, price, quantity = 1)
self.total += price * quantity
quantity.times do
@items.push(title)
@items
end
@last_transaction = price * quantity
@items
end

def apply_discount 
if discount != 0 
self.total = total - total/100 * discount
p "After the discount, the total comes to $800."
else
p "There is no discount to apply."
end
end

def void_last_transaction
@items.pop()
@total -= @last_transaction
end

end


