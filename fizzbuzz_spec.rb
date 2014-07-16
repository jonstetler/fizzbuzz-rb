require_relative "fizzbuzz"

RSpec.describe FizzBuzz do
	fizzbuzz = FizzBuzz.new
	results = fizzbuzz.computeFizzBuzz
	describe "computeFizzBuzz results" do

		it "should have a value of 1 at index 0" do
       		expect(results[0]).to eq(1)
    	end


    	it "should have a value of 'Buzz' at index 99 (rather than 100)" do
      		expect(results[99]).to eq(FizzBuzz::BUZZ)
    	end


    	it "should have a value of 'Fizz' at index 2 (rather than 3)" do
      		expect(results[2]).to eq(FizzBuzz::FIZZ)
    	end


    	it "should have a value of 'FizzBuzz' at index 14 (rather than 15)" do
      		expect(results[14]).to eq(FizzBuzz::FIZZBUZZ)
    	end

  	end

end