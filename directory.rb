@students = []
# Define Methods
def find_longest_name(key)
	longest_name = 0
	@students.each do |student|
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

def print_students
	if !@students.empty?
		longest_name = find_longest_name('name')
		longest_nationality = find_longest_name('nationality')
		@students.each_with_index do |student, i|
			puts "#{i+1}. "+"#{student[:name]}".ljust(longest_name)+" Nationality: "+"#{student[:nationality]}".ljust(longest_nationality)+" Cohort: #{student[:cohort]}"
		end
	end
end

def print_footer
	puts ""
	puts "Overall we have #{@students.length} great students"
end

def input_students
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
		@students << {:name => name, :cohort => cohort, :nationality => nationality}
		puts ""
		puts "Now we have #{@students.length} student(s)"
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
end

def prompt
	puts ""
		puts "What would you like to do?"
		puts "--------------------------"
		puts "1. Input Students"
		puts "2. Show Students"
		puts "3. Save Students to File"
		puts "9. Exit"
		puts ""
end

def show_students
	print_header
	print_students
	print_footer	
end

def process(choice)
	case choice
	when "1"
		students = input_students
	when "2"
		show_students
	when "3"
		save_students
	when "9"
		exit
	else	
		puts "I don't know what you meant, try again"
	end
end

def menu_loop
	loop do
		prompt
		process(gets.chomp)
	end
end

def save_students
	# open file for writing
	file = File.open("students.csv","w")
	@students.each do |student|
		student_data = [student[:name], student[:nationality], student[:cohort]]
		csv_line = student_data.join(", ")
		file.puts csv_line
	end
	file.close
end

# Nothing happens until we call the methods 
menu_loop