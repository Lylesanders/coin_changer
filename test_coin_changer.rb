require "minitest/autorun"						# add minitest function to program
require_relative "coin_changer.rb"					# point minitest to division.rb

class TestCoinChanger < Minitest::Test  	#create template for test


	# def test_one_equal_one
	# 	assert_equal(1,1)
	# end

	def test_0_returns_empty_hash
		cents_received =0
		assert_equal({},coin_changer(cents_received))
	end

	def test_greater_than_0_return_true
		cents_received = 1
		assert_equal({:penny => 1},coin_changer(cents_received))
	end

	def test_two_cents_retrun_two_pennies
		cents_received = 2
		assert_equal({:penny => 2},coin_changer(cents_received))
	end

	def test_5_cents_returns_one_nickle
		cents_received = 5
		assert_equal({:nickle => 1}, coin_changer(cents_received))
	end
	def test_6_cents_returns_one_nickle_one_dime
		cents_received = 6
		assert_equal({:nickle =>1 , :penny =>1}, coin_changer(cents_received))
	end

	def test_8_cents_returns_3_pennies_1_nickle
		cents_received = 8
		assert_equal({:nickle =>1 , :penny =>3}, coin_changer(cents_received))
	end
	def test_10_cents_returns_1_dime
		cents_received = 10
		assert_equal({:dime => 1}, coin_changer(cents_received))
	end

	def test_11_cents_returns_1_pennies_1_dime
		cents_received = 11
		assert_equal({:dime => 1, :penny=>1}, coin_changer(cents_received))
	end

	def test_16_cents_returns_1_pennies_1_nickle_1_dime
		cents_received = 16
		assert_equal({:dime => 1, :nickle =>1, :penny =>1}, coin_changer(cents_received))
	end

end
