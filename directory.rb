# Define Methods
def print_header
	puts "The students in my cohort at Makers Academy"
	puts "-------------"
end

def print(students)
	students.each do |student|
		puts "#{student[:name]} (#{student[:cohort]} cohort)"
	end
end

def print_footer(names)
	puts "Overall we have #{names.length} great students"
end

def input_students
	puts "Please enter the names of the students"
	puts "To finish, just hit return twice"
	# Create an empty array
	students = []
	# get the first name
	name = gets.chomp
	while !name.empty? do
		students << {:name => name, :cohort => :november}
		puts "Now we have #{students.length} students"
		name = gets.chomp
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