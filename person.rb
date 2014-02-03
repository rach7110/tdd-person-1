class Person
	attr_accessor :first_name, :last_name

	def initialize(first_name = nil, last_name = nil)
		@first_name = first_name
		@last_name = last_name
	end

	def full_name
		"#{first_name} #{last_name}" if first_name || last_name
	end

	def reverse_name
		full_name.reverse if first_name || last_name
	end

end
