class FirstinteractiveMailer < ActionMailer::Base
  default :from => "noreply@biasthmawebinars.com"
  default :to => "branden.mittra@streamingwell.com"
  # default :bcc => "branden.mittra@streamingwell.com"

  def new_firstinteractive(firstinteractive)
    @firstinteractive = firstinteractive
    mail(:subject => "First Interactive: biasthmawebinars.com")
  end

end