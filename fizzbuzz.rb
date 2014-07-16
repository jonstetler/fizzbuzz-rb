class FizzBuzz

	FIZZ = "Fizz"
	BUZZ = "Buzz"
	FIZZBUZZ = "FizzBuzz"

	def initialize 
		@fizzMultiple = 3
		@buzzMultiple = 5
		@from = 1
		@to = 100	
	end


	def isFizzMultiple(num)
		if num % 3 === 0 then return true else return false end
	end 


	def isBuzzMultiple(num)
		if num % 5 === 0 then return true else return false end
	end


	def isFizzBuzzMultiple(num)
		if isFizzMultiple(num) === true and isBuzzMultiple(num) === true then
			return true
		else
			return false
		end
	end


	private :isFizzMultiple, :isBuzzMultiple, :isFizzBuzzMultiple 


	def computeFizzBuzz
		i = @from
		result = Array.new
		while i <= @to do
			if isFizzBuzzMultiple(i) then
				result.push(FizzBuzz::FIZZBUZZ)
			elsif isFizzMultiple(i) then
				result.push(FizzBuzz::FIZZ)
			elsif isBuzzMultiple(i) then
				result.push(FizzBuzz::BUZZ)
			else 
				result.push(i)
			end
			i += 1
		end
		return result
	end


	def render
		values = computeFizzBuzz
		print "#" * 10 + " --- TOP OF GRID --- " + "#" * 10
		print "\n #{computeFizzBizz} \n"
		print "#" * 10 + " --- BOTTOM OF GRID --- " + "#" * 10 + "\n"
	end

end

