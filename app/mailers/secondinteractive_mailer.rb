class SecondinteractiveMailer < ActionMailer::Base
  default :from => "noreply@biasthmawebinars.com"
  default :to => "branden.mittra@streamingwell.com"
  # default :bcc => "branden.mittra@streamingwell.com"

  def new_secondinteractive(secondinteractive)
    @secondinteractive = secondinteractive
    mail(:subject => "Second Interactive: biasthmawebinars.com")
  end

end