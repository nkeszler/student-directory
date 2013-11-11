# Lets put all the students in an array
students = [
	"Nicki",
	"Chris",
	"Georgio",
	"JB",
	"Lara",
	"James",
]
puts "The students in my cohort at Makers Academy"
puts "-------------"
students.each do |student|
	puts student
end
# Finally we print the total
puts "Overall we have #{students.length} great students"