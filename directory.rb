# Define Methods
def find_longest_name(students, key)
	longest_name = 0
	students.each do |student|
		if student[key.to_sym].length > longest_name
			longest_name = student[key.to_sym].length
		end
	end
	longest_name
end

def print_header
	puts "The students in my cohort at Makers Academy"
	puts "-------------"
end

def print_students(students)
	if !students.empty?
		longest_name = find_longest_name(students, 'name')
		longest_nationality = find_longest_name(students, 'nationality')
		students.each_with_index do |student, i|
			puts "#{i+1}. "+"#{student[:name]}".ljust(longest_name)+" Nationality: "+"#{student[:nationality]}".ljust(longest_nationality)+" Cohort: #{student[:cohort]}"
		end
	end
end

def print_footer(names)
	puts ""
	puts "Overall we have #{names.length} great students"
end

def input_students(students)
	puts "Please enter Student Information"
	# get the first name
	print "Name: "
	name = gets.chomp
	print "Now enter their Cohort: "
	cohort = gets.chomp
	print "And their Nationality: "
	nationality = gets.chomp
	while !name.empty? do
		if cohort.empty?
			cohort = "(Na)"
		end
		if nationality.empty?
			nationality = "(Na)"
		end
		students << {:name => name, :cohort => cohort, :nationality => nationality}
		puts ""
		puts "Now we have #{students.length} student(s)"
		puts "Would you like to enter another? [Y/N] "
		answer = gets.chomp
		puts ""
		if answer.casecmp('y') == 0
			print "Name:"
			name = gets.chomp
			if name.empty?
				break
			end
			print "Cohort:"
			cohort = gets.chomp
			print "Nationality:"
			nationality = gets.chomp
		elsif answer.casecmp('n') == 0
			name = ""
		end	
	end
	# return the array of students
	students
end

def menu_loop
	students = []
	loop do
		puts ""
		puts "What would you like to do?"
		puts "--------------------------"
		puts "1. Input Students"
		puts "2. Show Students"
		puts "9. Exit"
		puts ""
		choice = gets.chomp
		case choice
		when "1"
			students = input_students(students)
		when "2"
			print_header
			print_students(students)
			print_footer(students)
		when "9"
			exit
		else	
			puts "I don't know what you meant, try again"
		end
	end
end

# Nothing happens until we call the methods 
menu_loop