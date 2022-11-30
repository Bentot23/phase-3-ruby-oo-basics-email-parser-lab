# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
# require "pry"
class EmailAddressParser
    attr_accessor :addresses

    def initialize(input)
        @addresses = input
    end

    def parse
       @addresses.split(%r[\s+|,\s*]).uniq
    end
end
# binding.pry

email_addresses = "john@doe.com, person@somewhere.org" "avi@test.com, avi@test.com" "arel@test.com test@avi.com, test@arel.com"
parser = EmailAddressParser.new(email_addresses)

parser.parse