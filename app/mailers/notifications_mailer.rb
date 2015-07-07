class NotificationsMailer < ActionMailer::Base
  default :from => "noreply@biasthmawebinars.com"
  default :to => "branden.mittra@streamingwell.com"
  # default :bcc => "branden.mittra@streamingwell.com"

  def new_message(message, user)
    @user = user
    @message = message
    mail(:subject => "Question: biasthmawebinars.com")
  end

  def new_feedback(feedback, user)
    @user = user
    @feedback = feedback
    mail(:subject => "Evaluation: biasthmawebinars.com")
  end

  def new_firstinteractive(firstinteractive, user)
    @user = user
    @firstinteractive = firstinteractive
    mail(:subject => "First Attempt Interactive Questions: biasthmawebinars.com")
  end

  def new_secondinteractive(secondinteractive, user)
    @user = user
    @secondinteractive = secondinteractive
    mail(:subject => "Second Attempt Interactive Questions: biasthmawebinars.com")
  end
end