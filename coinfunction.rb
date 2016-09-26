
	

def coin_sorter(cents_received)

	coins = {penny:0, nickle:0, dime:0, quarter:0, half_dollar:0} 
	coin_values={half_dollar:50, quarter:25, dime:10, nickle:5, penny:1}

coin_values.each do |name, amount|   # repeat for each coin in 21, loads coin name and amount 
	while amount <= cents_received	# while the coin amount is smaller than the money amount keep using this coin	
		coins[name] +=1   			# look at the next coin
		cents_received=cents_received-amount 			#subtract the amount of the coin from money
	end  	# end the while loop in 24
end 		#end the do loop in line 23
coins 		# pass the hash into the fnction
end			#end the function in line 18
