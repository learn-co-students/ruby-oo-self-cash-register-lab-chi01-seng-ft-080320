class CashRegister
attr_accessor :discount, :total
    def initialize (discount=0)
        @discount = discount 
        @total = 0 
        @items_array = []
        @recent_transaction = 0
    end

    def add_item (title, price, quantity=1)
        @total += price * quantity
        quantity.times {@items_array << title}
        @recent_transation = price * quantity
    end

    def apply_discount
        if @discount != 0
        employee_discount = @total * (1 - (@discount.to_f/100))
        @total = employee_discount
        p "After the discount, the total comes to $#{@total.to_i}."
        else 
        p "There is no discount to apply."
        end
    end
    def items
        @items_array
    end
    def void_last_transaction
        @total -= @recent_transation
        @items_array.pop
    end
end
