class AdminMailer < ActionMailer::Base
  default :from => "noreply@biasthmawebinars.com"
  default :to => "branden.mittra@streamingwell.com"
  # default :bcc => "branden.mittra@streamingwell.com"

  def registration_notification(user)
    @user = user
    mail(subject: "New Registration on BI Asthma Webinar")
  end

end
