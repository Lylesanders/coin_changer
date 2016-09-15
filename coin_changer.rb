#coin changer kata

#write a function thattakes a number of cents, and that returns a hash containingthe least number of coins needed to generate the value of the cents

# eg if you have 11 cents you should retrun {:dime => 1, penny => 1}; if you have 31 cents you should return {:quarter=> 1, nickel =>, :penny=.1}.

#build uo your coin changer using tests. commit to git after every test.
def coin_changer(money)
	amount=0
	coins = {quarter:0, dime:0, nickle:0, penny:0}
		if money. between?(10,24)
		amount = money/10
		coins[:dime] = amount
		money= money - (amount * 10)
	end

	if money. between?(5,9)
		coins[:nickle] =1
		money= money - 5
	end

	if money. between?(1,4)
		coins [:penny]=money
	else
	{}
	end
	coins
end