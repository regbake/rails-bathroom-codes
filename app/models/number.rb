class Number < ApplicationRecord
	# Todo: Refine validation - country code, potentional (xxx) and xxx-xxxx
	validates :number, format: { with: /\A\d{10}\z/, message: "Please enter a valid 10 digit phone number, with no () or -" }
	validates :number, uniqueness: true

end
