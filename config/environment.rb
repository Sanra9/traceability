# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => 'sanra9@outlook.com',
  :password => 'sendgrid.0159',
  :domain => 'https://calm-river-94599.herokuapp.com',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}
echo "export SENDGRID_API_KEY='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'" > sendgrid.env
echo "sendgrid.env" >> .gitignore
source ./sendgrid.env
