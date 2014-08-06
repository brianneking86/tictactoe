class Player

	#iniitiate variables and give blank value to start
	def button1
		button1 = ' '
	end
	
	def button2 
		button2 = ' '
	end

	def button3
		button3 = ' '
	end

	def button4
		button4 = ' '
	end

	def button5
		button5 = ' '
	end

	def button6 
		button6 = ' '
	end

	def button7
		button7 = ' '
	end

	def button8
		button8 = ' '
	end

	def button9
		button9 = ' '
	end

	#sets date for bottom of screen
	def pickdate
		today = Date.today
	end

	#resets for new game
	def newgame
		button1 = ' '
		button2 = ' '
		button3 = ' '
		button4 = ' '
		button5 = ' '
		button6 = ' '
		button7 = ' '
		button8 = ' '
		button9 = ' '

	end

	def gameplay

		#count number of Xs and Os
		allbuttons = [button1, button2, button3, button4, button5, button6, button7, button8, button9]

		numX = allbuttons.count{|x|x=="X"}
		numO = allbuttons.count{|x|x=="O"}

		#if either X or O has made 3 moves then check if
		#entries in board meet any of 8 different winning criteria

		if numX >= 3 || numO >= 3		
			if [button1, button2, button3].uniq.count == 1
				puts button1.to_s + ' wins!'

			elsif [button4, button5, button6].uniq.count == 1
				puts button4.to_s + ' wins!'

			elsif [button7, button8, button9].uniq.count == 1
				puts button7.to_s + ' wins!'

			elsif [button1, button5, button9].uniq.count == 1
				puts button1.to_s + ' wins!'

			elsif [button3, button5, button7].uniq.count == 1
				puts button3.to_s + ' wins!'

			elsif [button1, button4, button7].uniq.count == 1
				puts button1.to_s + ' wins!'

			elsif [button2, button5, button8].uniq.count == 1
				puts button2.to_s + ' wins!'

			elsif [button3, button6, button9].uniq.count == 1
				puts button3.to_s + ' wins!'

			#check if there are no blank spaces left on the board since if all spaces are full
			#but none of the winning possibilties are found then the game is a draw
			else allbuttons.blank?.count == 0
				puts 'Game is a draw'
			end
		end			


	end	


	
end