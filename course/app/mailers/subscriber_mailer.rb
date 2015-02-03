class SubscriberMailer < ActionMailer::Base
  default from: "info@secourse.cz"

  def registration_confirmation(subscriber)
    @subscriber = subscriber
    mail(:to => subscriber.email, :subject => "Potvrzení registrace")
  end
end
