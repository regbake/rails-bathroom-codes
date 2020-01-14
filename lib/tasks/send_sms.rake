require 'twilio-ruby'

namespace :custom do
	desc 'send sms'

	task :send_sms_code => :environment do
		all_number = Number.all

		account_sid = 'SECRET_SID'
		auth_token = 'SECRET_TOKEN'

		client = Twilio::REST::Client.new(account_sid, auth_token)

		all_number.each do |number|
			# could parse and verify it is a 10 digit number - rely on validation
			user_number = number.number
			from = '+13342922918' # Your Twilio number
			to = '+1' + user_number # Your mobile phone number

			client.messages.create(
			from: from,
			to: to,
			body: "Reggie's test SMS - the code is 1234"
			)


			#NOTE: From Twilio - The number  is unverified. Trial accounts cannot send messages to unverified numbers; verify
			#at twilio.com/user/account/phone-numbers/verified, or purchase a Twilio number to send messages to unverified numbers
			#So this might not always work..
		end
	end

end