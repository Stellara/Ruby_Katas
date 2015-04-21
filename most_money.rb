# A simple exercise to calculate which student in a collection of students has the most money.

class Student 
	attr_reader :name
	attr_reader :fives
	attr_reader :tens
	attr_reader :twenties 

	def initialize(name, fives, tens, twenties)
		@name = name
		@fives = fives 
		@tens = tens
		@twenties = twenties
	end
end

def most_money(students)
	totals = students.map do |student|
		(student.fives * 5) + (student.tens * 10) + (student.twenties * 20)
	end
	if totals.uniq.length == 1 
		"all"
	else
		students[totals.index(totals.max)].name
	end
end


phil = Student.new("Phil", 2, 2, 1)
cam = Student.new("Cameron", 2, 2, 0)
geoff = Student.new("Geoff", 0, 3, 0)

class1 = [cam, geoff]

puts most_money(class1)