
require "pry"

class CashRegister

    attr_accessor :total, :discount, :items

    ##creat item hash to keep item and price history

    def initialize(*discount)
        @total = 0
        @discount = discount[0]
        @items = []
        @items_hash ={}
    end

    ## every time an item is added total, items array, and item_hash are updated
    def add_item(title, price, *quantity)
        if(quantity[0])
        self.total = @total + price * quantity[0]
        @items.fill(title, @items.length, quantity[0])
        @items_hash[title] = price
        else 
            self.total = @total + price # SHOULD I INCLUDE SELF IN TOTAL as self.total + price || total + price || as it is @total
            @items << title
            @items_hash[title] = price
        end


    end 

    ## applies discount if discount exists

    def apply_discount
        if(@discount)
            self.total = @total  * ((100.to_f - @discount) / 100 ) 
            "After the discount, the total comes to $#{"%g" % ("%.2f" % self.total)}."
        else 
            self.total = @total
            "There is no discount to apply."
        end
    end 
    ## uses the @items arr to check what was the last item that was added
    ## counts how many times that item exists in the @items arr
    ## from total subtracts the times the item was added  * its price which exists in the @items_hash arr
    def void_last_transaction
        last_item = @items[@items.length - 1]
        counter = 0
        @items.each do |value|
            if(value == last_item)
                counter +=1
            end 
        end 
        self.total = @total - counter * @items_hash[last_item]
    end

end 



first_cash_register = CashRegister.new(20)
second_cash_register = CashRegister.new(50)



