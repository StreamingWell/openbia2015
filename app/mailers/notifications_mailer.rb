class NotificationsMailer < ActionMailer::Base
  default :from => "noreply@lutswebinar.co.uk"
  # default :to => "rummy.ladwa@succinctcomms.com"
  default :to => "branden.mittra@streamingwell.com"
  # default :bcc => "branden.mittra@streamingwell.com"

  def new_message(message, user)
    @user = user
    @message = message
    mail(:subject => "Question: Urology Lunchtime Webinar")
  end

  def new_feedback(feedback, user)
    @user = user
    @feedback = feedback
    mail(:subject => "Evaluation: Urology Lunchtime Webinar")
  end
end