
require 'pry'

class CashRegister

    attr_accessor :discount, :total

    def initialize(discount = 0)
        @discount = discount
        @total = 0
        @items = []
    end
       
    def add_item(title, price, quantity = 1)
        @total += (quantity.to_f)*(price.to_f)
        quantity.times do 
            @items << title 
        end
        @last_item_scanned = quantity * price 
    end
    
    def apply_discount
        if self.discount > 0
            discount_in_dollars = (self.discount.to_f/100)*(self.total) 
            self.total -= discount_in_dollars
            "After the discount, the total comes to $#{self.total.to_i}."
        else 
            "There is no discount to apply."
        end
    end

    def items
        @items
    end

    def void_last_transaction
        #binding.pry
        self.total -= @last_item_scanned
    end

end

#binding.pry