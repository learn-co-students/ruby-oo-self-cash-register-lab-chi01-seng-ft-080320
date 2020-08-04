class CashRegister
    def initialize(discount=0) #new Cashregister incidence with optional discount
        @discount = discount
        @total = 0
        @all_items = []
        @recent_transaction = 0
    end
    attr_accessor :discount, :total #gets and sets
    #adds item and price to total
    def add_item(title, price, quantity=1)
        @total += price * quantity
        quantity.times {@all_items << title}
        @recent_transaction = price * quantity
    end 
    #applies discount
    def apply_discount
        if @discount != 0
            discount_percent = @discount.to_f/100
            @total = @total.to_f * (1 - discount_percent)
            p "After the discount, the total comes to $#{@total.to_i}."
        else
            p "There is no discount to apply."
        end 
    end 
    #list items by name
    def items 
        @all_items 
    end
    #removes last transaction
    def void_last_transaction
        @total -= @recent_transaction 
        @all_items.pop
    end
end #of class CashRegister
