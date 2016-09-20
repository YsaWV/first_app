
def commit_changer(coins_r)

	coins = {}
	
	if coins_r == 1
		coins["penny"] = 1
	
	 
		elsif coins_r == 2
			coins["penny"] = 2
			coins["nickel"] = 5
			coins["dime"] = 10
	 
		elsif coins_r == 5
		
			coins["nickel"] = 5
	
		
		elsif coins_r == 10

			coins["dime"] = 10
	
		elsif 
	 		 coins_r == 15

			coins["nickel"] = 5
			coins["dime"] = 10
		 

		elsif coins_r == 20

			coins["dime"] = 20
	
		elsif coins_r == 25

			coins["quarter"] = 25
	

		elsif coins_r == 6
			coins["penny"] = 1
			coins["nickel"] = 5

	end


	coins

end

#commit_changer(1)