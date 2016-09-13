require "minitest/autorun"						# add minitest function to program
require_relative "coin_changer.rb"					# point minitest to division.rb

class TestCoinChanger < Minitest::Test  	#create template for test


	# def test_one_equal_one
	# 	assert_equal(1,1)
	# end

	def test_0_returns_empty_hash
		assert_equal({},coin_changer(0))
	end

end
