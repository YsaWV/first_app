# Coin changer kata

# write a function that takes a number of cents, and that returns a hash containing
# the last number of coins needed to generate the claue of cents.





require "minitest/autorun"
require_relative "test_coin_changer_function.rb"

class TestCoinChanger <Minitest::Test
	def zero_test
		coins = 0
		assert_equal({}, commit_changer(coins))
	end

	def test_one_equals_one
		assert_equal(1,1)
	end

	def test_penny_equals_penny
		coins = 1
		assert_equal({"penny"=>1}, commit_changer(coins))
	end

	def test_penny_equals_nickel
		coins = 5
		assert_equal({"nickel"=>5}, commit_changer(coins))
	end

	def test_penny_equals_quarter
		coins = 6
		assert_equal({"nickel"=>5, "penny"=>1}, commit_changer(coins))
	end

	# def test_penny_equals_two_hundred_cents
	# 	coins = 200
	# 	assert_equal({"quarter"=>25}, commit_changer(coins))
	# end	

end

