# The Josephus ring problem

puts "The Josephus ring problem"
def josephus(num, k, m)
	# init ring
	people = (1..num).to_a
	counter = 0
	i = 0
	
	while people.length != 1
		counter += 1
		i += 1

		# check array bounds
		if i > people.length
			i = 1
		end

		if counter == m
			print "#{people[i-1]} is out!\n"
			people.delete_at(i-1)
			i -= 1
			counter = 0
		end
	end

	return (people[0] + k -1) % num
	
end 

test = josephus(6,1,3)

puts "The survivor is No.#{test}"
