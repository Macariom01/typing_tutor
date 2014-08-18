# a simple typing programm to work on individual fingers

 require 'io/console'
 require 'colorize'
# require 'win32console'



LP = ['q','a','z']
LR = ['w','s','x']
LM = ['e','d','c']
LI = ['r','f','v','t','g','b']
RI = ['y','h','n','m','j','u']
RM = [',','k','i']
RR = ['o','l','.']
RP = ['p',';','/']

ROW_LENGTH = 40

	def build_random_array(a,b)
		a.shuffle!
		a.each {|x| b.push(x) }
		b.push(' ')
		return b
	end

input = "a"

#puts String.color_matrix("FOO")


while (input != 'e')	

	print "\n\n\n\n\n"
	puts "Pease select a finger to work on by typing the two letter code indicated.".cyan
	puts "If you wish to work on the whole alphabet type  ".cyan + "a"
	puts
	puts "lp " + "= Left Pinky   ".yellow + "lr " +  "= Left Ring   ".yellow  + "lm " +  "= Left Middle   ".yellow + "li " + "= Left Index".yellow
	puts
	puts "rp " + "= Right Pinky   ".yellow + "rr " + "= Right Ring   ".yellow + "rm " + "= Right Middle   ".yellow + "ri " + "= Right Index".yellow
	puts
	puts "a " + "= alphabet  ".yellow + "e " + "= exit".yellow
	puts
	puts'Make a selection then hit enter'.cyan
	input = gets.chomp



	if input == 'e'
		break
	elsif input == 'a'
		input = LP + LR + LM + LI + RI + RM + RR + RP 
	elsif input == 'lp'
		input = LP
	elsif input == 'lr'
		input = LI
	elsif input == 'lm'
		input = LM
	elsif input == 'li'
		input = LI
	elsif input == 'rp'
		input = RP
	elsif input == 'rr'
		input = RR
	elsif input == 'rm'
		input = RM
	elsif input == 'ri'
		input = RI
	end

	typing_array = Array.new
	
	ch = "/"

	until ch == '+'
		
		while ( (build_random_array(input,typing_array) ).length < ROW_LENGTH )
		end
		puts
		puts
		puts "To stop typing type ".yellow + "+" + "    To continue typing type ".yellow + "space " + "at the end of the line.".yellow
		puts "Mistakes are highlighted in ".yellow + "red".red
		puts
		typing_array.each {|x| print x }
		puts

		i = 0
		while i < typing_array.length

			ch = STDIN.getch
			if ch == "+"
				i = typing_array.length				
			elsif ch == typing_array[i]
				print ch.green
			else
				print ch.red
			end # closes if
		
			i += 1
		end # closes while

		typing_array = Array.new

	end #closes until
end # closes input != E
