ActionMailer::Base.smtp_settings = {
  user_name: ENV['sendgrid_username'],
  password: ENV['sendgrid_password'],
  domain: ENV['sendgrid_domain'],
  address: 'smtp.sendgrid.net',
  port: 587,
  authentication: :plain,
  enable_starttls_auto: true
}

ActionMailer::Base.default_url_options[:host] = ENV["HOSTNAME"] || "localhost:3000"