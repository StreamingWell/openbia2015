class AdminMailer < ActionMailer::Base
  default :from => "noreply@lutswebinar.co.uk"
  # default :to => "rummy.ladwa@succinctcomms.com"
  default :to => "branden.mittra@streamingwell.com"
  # default :bcc => "branden.mittra@streamingwell.com"

  def registration_notification(user)
    @user = user
    mail(subject: "New Registration")
  end

end
