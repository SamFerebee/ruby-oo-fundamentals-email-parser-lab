# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailAddressParser
    
    def initialize(emails)
        @email_addresses = emails
    end

    attr_accessor :email_addresses

    def parse
        @new_string = @email_addresses.delete(",")
        @email_array = @new_string.split
        @email_array.uniq
    end


end

test = EmailAddressParser.new("sam@sam.com, nicole@nicole.com")
