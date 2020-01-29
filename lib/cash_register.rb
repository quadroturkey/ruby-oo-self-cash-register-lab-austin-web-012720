require 'pry'

class CashRegister
    attr_accessor :total, :discount, :add_item

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @item_list = []
    end

    def add_item(title, price, quantity = 1)
        @title = title
        @total += ( price * quantity )
        @last_price = price

        while quantity > 0 do
            @item_list << @title
            quantity -= 1 
        end

    end

    def apply_discount

        if @discount != 0
            discount = (100.0 - @discount) / 100
            self.total *= discount
            "After the discount, the total comes to $#{self.total.to_i}."
        else
            "There is no discount to apply."
        end        

    end

    def items
        @item_list
    end    

    def void_last_transaction
        @total -= @last_price
        
        last_item = @item_list.pop
        while last_item == @item_list[-1]
            @item_list.pop
        end

        if @item_list.length == 0            
            @total = 0 
        end
    end

end


