class Animal
	def eat(food)
		"I ate #{food}"
	end
	def eat(food, amount)
		"I ate #{amount} pounds of #{food}"
	end
end
#animal = Animal. new
#puts animal.eat("meat", "23")

#puts "times:".upcase
#3.times { puts "hello"; puts "bye"}
#puts "\nupto:".upcase
#5.upto(10) { |x| puts(x+1)}
#puts "\nfind:".upcase
#[1,2,3,4,5].find {|y| puts y%2 == 0}
#puts "\ncollect".upcase
#[5, 4, 3].collect {|x| puts -x }
#puts "\n"

#puts "\nstep:".upcase
#0.step(25,1.3){ |count| puts count}
#puts "\ndownto:".upcase
#10.downto(1){|count| puts count}

def countx(x)
    for i in (1 .. x)
        puts i
        yield
        end
    end
countx(5) {puts "HURRAY"}
