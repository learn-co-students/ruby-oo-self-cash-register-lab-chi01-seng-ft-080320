require 'pry'
class CashRegister
    attr_accessor :discount, :last_transaction
    attr_writer :total
    def initialize(discount =0)
        @total = 0
        @discount = discount
        @all_items = []
    end 

    def total
        @total
    end 

    def add_item(title, price,quantity=1)
        self.total += price * quantity
        self.last_transaction = price * quantity
        quantity.times do 
            @all_items << title
        end
    end 
    
    def apply_discount
        if self.discount == 0
            "There is no discount to apply."
        else
            self.total -= (self.total * self.discount.to_i/100)
            "After the discount, the total comes to $#{self.total}."
        end
    end

    def items
        @all_items
    end

    def void_last_transaction
        self.total -= self.last_transaction
    end
end

# x = CashRegister.new
# x.add_item("apple", 0.99)
# x.add_item("tomato", 1.76)
# binding.pry
# 0 
