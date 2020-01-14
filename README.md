# Sample CRUD application for generating bathroom codes.

Visit https://bathroom-code-sms.herokuapp.com/ for live deployment

* "Today's code" is currently static
	* next steps are to add a Code model
	* Pull this Code from db to send in SMS
* Uses Twilio SMS (free dev account) to send SMS info to User phone number
	* Todo: add Twilio account info via secret key? Unclear proper security measures
	* Twilio want you to pay to send bulk SMS (unregistered phone numbers error)
* Next step - add user auth
	* include admin access with phone number delete

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
