# Define Methods
def print_header
	puts "The students in my cohort at Makers Academy"
	puts "-------------"
end

def print(names)
	names.each do |name|
		puts name
	end
end

def print_footer(names)
	puts "Overall we have #{names.length} great students"
end

# Lets put all the students in an array
students = [
	"Nicki",
	"Chris",
	"Georgio",
	"JB",
	"Lara",
	"James",
]

# Nothing happens until we call the methods 
print_header
print(students)
print_footer(students)