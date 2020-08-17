## CashRegister::new sets an instance variable @total on initialization to zero
# CashRegister ::new optionally takes an employee discount on initialization


class CashRegister

    attr_accessor :total  
    attr_reader :discount
 

    def initialize(total = 0)
        @total = total
        @discount = discount
       
    end
  
    
   def add_item(item, price, quantity)
 
   end 

   def cash_register
 
   end 


   def apply_discount
    total.discount
   end 
    
end
  