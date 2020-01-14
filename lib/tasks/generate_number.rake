require 'twilio-ruby'

namespace :custom do
	desc 'send sms'

	task :do_it => :environment do
		table_array = ActiveRecord::Base.connection.tables
		all_number = Number.all

		account_sid = 'AC7931c02249e18e349962765f591ce66a'
		auth_token = '941d84aa1c91c0cf030633f9f71e1cb0'
		client = Twilio::REST::Client.new(account_sid, auth_token)

		from = '+13342922918' # Your Twilio number
		to = '+17073643996' # Your mobile phone number

		# client.messages.create(
		# from: from,
		# to: to,
		# body: "Hey friend!"
		# )
		all_number.each do |number|
			temp_number = number.number
			# need to parse and verify it is a 10 digit number (with +1)

			puts "howdy #{number.number}"
		end
	end

end