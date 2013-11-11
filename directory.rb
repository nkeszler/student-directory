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

# Lets put all the students in an array
students = [
	{:name => "Nicki", :cohort => :november},
	{:name => "Chris", :cohort => :november},
	{:name => "Georgio", :cohort => :november},
	{:name => "JB", :cohort => :november},
	{:name => "Lara", :cohort => :november},
	{:name => "James", :cohort => :november},
]

# Nothing happens until we call the methods 
print_header
print(students)
print_footer(students)