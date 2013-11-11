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

def print(students)
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

def input_students
	puts "Please enter the names of the students"
	puts "To finish, just hit return twice"
	# Create an empty array
	students = []
	# get the first name
	name = gets.chomp
	puts "Now enter their Cohort"
	cohort = gets.chomp
	puts "And their Nationality"
	nationality = gets.chomp
	while !name.empty? do
		if cohort.empty?
			cohort = "(Na)"
		end
		if nationality.empty?
			nationality = "(Na)"
		end
		students << {:name => name, :cohort => cohort, :nationality => nationality}
		puts "Now we have #{students.length} student(s)"
		puts "Name:"
		name = gets.chomp
		if name.empty?
			break
		end
		puts "Cohort:"
		cohort = gets.chomp
		puts "Nationality:"
		nationality = gets.chomp
	end
	# return the array of students
	students
end
# Lets put all the students in an array
=begin
students = [
	{:name => "Nicki", :cohort => :november},
	{:name => "Chris", :cohort => :november},
	{:name => "Georgio", :cohort => :november},
	{:name => "JB", :cohort => :november},
	{:name => "Lara", :cohort => :november},
	{:name => "James", :cohort => :november},
	{:name => "Ken", :cohort => :novemeber}
]
=end

# Nothing happens until we call the methods 
students = input_students
print_header
print(students)
print_footer(students)