class SubscriberMailer < ActionMailer::Base
  default :from => "workshopmaggiekline@gmail.com"
  
  def registration_confirmation(subscriber)
    @subscriber = subscriber
    mail(:to => subscriber.email, :subject => "Potvrzení registrace")
  end
end
