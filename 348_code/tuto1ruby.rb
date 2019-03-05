class Person
	attr_accessor :name, :dob
end

class Student < Person
	attr_accessor :sid, :gpa
	def initialize(name, dob, sid, gpa)
		@name = name
		@dob = dob
		@sid = sid
		@gpa = gpa
	end

	def get_gpa
		gpa
	end

	def to_s
		name." ".dob
end

