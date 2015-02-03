ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "gmail.com",
  :user_name            => "skronovo",
  :password             => "chico23",
  :authentication       => "plain",
  :enable_starttls_auto => true
}