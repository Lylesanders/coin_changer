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
end
