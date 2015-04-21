# A simple class to return the largest prime factor of a number. 

class Factors
	def initialize(number)
		@number = number
		@factorlist = []
	end

	def get_factors(number)
		upper_limit = Math.sqrt(@number)
		for e in (1..upper_limit)
			if ((@number%e)==0) 
				factorlist << e
				factorlist << x/e
			end 
		end 
		factorlist
	end 

	def is_prime?
		@factorlist.length == 2
	end
	
	def largest_prime_factor
		prime_factors = get_factors(@number).select {|factor| is_prime?(get_factors(factor))}
		puts "These are the prime factors of #{n}: #{prime_factors.sort}"
		prime_factors.sort[-1]
	end

end