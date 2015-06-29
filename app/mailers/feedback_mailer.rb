class FeedbackMailer < ActionMailer::Base
  default :from => "noreply@biasthmawebinars.com"
  default :to => "branden.mittra@streamingwell.com"
  # default :bcc => "branden.mittra@streamingwell.com"

  def new_feedback(feedback)
    @feedback = feedback
    mail(:subject => "Evaluation: biasthmawebinars.com")
  end

end