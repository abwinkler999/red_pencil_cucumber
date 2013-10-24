class Product
	attr_accessor :original_price, :discount

	def initialize
		@original_price = 0
	end

	def validate_discount(applied_discount)
		if (applied_discount <= 0.30 && applied_discount >= 0.05 )
			@discount = applied_discount
		else
			@discount = 0
		end
	end

	def current_price
		@original_price * (1 - @discount)
	end
end