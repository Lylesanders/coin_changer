#coin changer kata

#write a function thattakes a number of cents, and that returns a hash containingthe least number of coins needed to generate the value of the cents

# eg if you have 11 cents you should retrun {:dime => 1, penny => 1}; if you have 31 cents you should return {:quarter=> 1, nickel =>, :penny=.1}.

#build uo your coin changer using tests. commit to git after every test.
def coin_changer(money)
	coins = {}
	if money == 1
		coins [:penny]=1
	else
	{}
	end
	coins
end