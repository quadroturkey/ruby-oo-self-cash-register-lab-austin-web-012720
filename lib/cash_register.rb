class CashRegister
    attr_accessor :total, :discount, :add_item

    def initialize(discount = 0)
        @total = 0
        @discount = discount
    end

    def add_item(title, price, quantity = 1)
        @title = title
        @total += ( price * quantity )
    end

    def apply_discount

        if @discount != 0
            discount = (100.0 - @discount) / 100
            @total *= discount
            "After the discount, the total comes to $#{@total.to_i}."
        else
            "There is no discount to apply."
        end
        
    end

end


