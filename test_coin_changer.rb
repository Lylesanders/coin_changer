require "minitest/autorun"						# add minitest function to program
require_relative "coinfunction.rb"					# point minitest to division.rb

class TestCoinChanger < Minitest::Test  	#create template for test

# def test_one_cent
# 	 assert_equal({half_dollar:0, quarter:0, dime:0, nickle:0, penny:1}, 
#      coinchanger(1))
# end

	def test_0_returns_empty_hash
		cents_received =0
		assert_equal({half_dollar:0, quarter:0, dime:0, nickle:0, penny:0},coin_changer(cents_received))
	end

	def test_1_returns_1_penny
		cents_received = 1
		assert_equal({half_dollar:0, quarter:0, dime:0, nickle:0, penny:1},coin_changer(cents_received))
	end

	def test_two_cents_retrun_two_pennies
		cents_received = 2
		assert_equal({half_dollar:0, quarter:0, dime:0, nickle:0, penny:2},coin_changer(cents_received))
	end

	def test_5_cents_returns_one_nickle
		cents_received = 5
		assert_equal({half_dollar:0, quarter:0, dime:0, nickle:1, penny:0}, coin_changer(cents_received))
	end
	def test_6_cents_returns_one_nickle_one_dime
		cents_received = 6
		assert_equal({half_dollar:0, quarter:0, dime:0, nickle:1, penny:1}, coin_changer(cents_received))
	end

	def test_8_cents_returns_3_pennies_1_nickle
		cents_received = 8
		assert_equal({half_dollar:0, quarter:0, dime:0, nickle:1, penny:3}, coin_changer(cents_received))
	end

	def test_10_cents_returns_1_dime
		cents_received = 10
		assert_equal({half_dollar:0, quarter:0, dime:1, nickle:0, penny:0}, coin_changer(cents_received))
	end

	def test_11_cents_returns_1_pennies_1_dime
		cents_received = 11
		assert_equal({half_dollar:0, quarter:0, dime:1, nickle:0, penny:1}, coin_changer(cents_received))
	end

	def test_16_cents_returns_1_pennies_1_nickle_1_dime
		cents_received = 16
		assert_equal({half_dollar:0, quarter:0, dime:1, nickle:1, penny:1}, coin_changer(cents_received))
	end

	def test_25_returns_1_quarter
		cents_received = 25
		assert_equal({half_dollar:0, quarter:1, dime:0, nickle:0, penny:0}, coin_changer(cents_received))
	end

		def test_41_returns_1_everything
		cents_received = 41
		assert_equal({half_dollar:0, quarter:1, dime:1, nickle:1, penny:1}, coin_changer(cents_received))
	end

		def test_100_returns_1_dollar
		cents_received = 41
		assert_equal({half_dollar:0, quarter:1, dime:1, nickle:1, penny:1}, coin_changer(cents_received))
	end


end
