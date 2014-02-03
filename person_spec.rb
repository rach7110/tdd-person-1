# Unit test:

require 'rubygems'
require 'rspec'
require_relative 'person'

describe Person do
	context "when a name is provided" do
		let(:person) {Person.new 'Rachel', 'Loziuk'}

		describe ".initialize"  do #convention for class method (instance method uses a hash instead of period)
				it "creates a new person with first and lsat name" do
				# person = Person.new 'Rachel', 'Loziuk'
				expect(person.first_name).to eq('Rachel')
				expect(person.last_name).to eq('Loziuk')
			end
		end

		describe "#full_name" do
			it "returns the full name of the person" do
				# person = Person.new 'Rachel', 'Loziuk'
				expect(person.full_name).to eq ('Rachel Loziuk')
			end
		end

		describe "#reverse_name" do
			it "Returns the name in reverse" do
				expect(person.reverse_name).to eq ('kuizoL lehcaR')
			end
		end
	end

	context "when a name is not provided" do
		let(:person) {Person.new}

		describe ".initialize" do
			it "creates a new person without a first or last name" do
				expect(person.first_name).to be_nil
				expect(person.last_name).to be_nil
			end
		end

		describe "#full_name" do
			it "should return nil" do
				expect(person.full_name).to be_nil
			end
		end

		describe "#reverse_name" do
			it "should return nil" do
				expect(person.reverse_name).to be_nil
			end
		end
	end
end

# Write outline first:
describe Person do
	context "when a name is provided" do

		describe ".initialize"  do #convention for class method (instance method uses a hash instead of period)
				it "creates a new person with first and lsat name" do
			end
		end

		describe "#full_name" do
			it "returns the full name of the person" do
			end
		end
	end

	context "when a name is not provided" do
		describe ".initialize" do
			it "creates a new person without a first or last name" do
			end
		end
	end
end