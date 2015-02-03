class SubscriberMailer < ActionMailer::Base
  
  def registration_confirmation(subscriber)
    @subscriber = subscriber
    mail(:to => subscriber.email, :subject => "Potvrzení registrace")
  end
end
