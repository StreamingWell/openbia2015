class FeedbackMailer < ActionMailer::Base
  default :from => "noreply@lutswebinar.co.uk"
  # default :to => "rummy.ladwa@succinctcomms.com"
  default :to => "branden.mittra@streamingwell.com"
  # default :bcc => "branden.mittra@streamingwell.com"

  def new_feedback(feedback)
    @feedback = feedback
    mail(:subject => "Evaluation: Urology Lunchtime Webinar")
  end

end