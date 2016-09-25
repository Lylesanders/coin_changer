
	

def coin_changer(money)

	coins = {penny:0, nickle:0, dime:0, quarter:0, half_dollar:0} 
	coin_values={half_dollar:50, quarter:25, dime:10, nickle:5, penny:1}

coin_values.each do |coin, amount|   # repeat for each coin in 21, loads coin name and amount 
	while amount <= money  			# while the coin amount is smaller than the money amount keep using this coin	
		coins[coin] +=1   			# look at the next coin
		money=money-amount 			#subtract the amount of the coin from money
	end  	# end the while loop in 24
end 		#end the do loop in line 23
coins 		# pass the hash into the fnction
end			#end the function in line 18
