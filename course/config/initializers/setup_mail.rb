ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "gmail.com",
  :user_name            => "workshopmaggiekline@gmail.com",
  :password             => "Budapest2014",
  :authentication       => "plain",
  :enable_starttls_auto => true,
  :openssl_verify_mode => 'none'
}
