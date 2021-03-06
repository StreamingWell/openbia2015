class UserMailer < ActionMailer::Base
  default :from => "noreply@biasthmawebinars.com"
  layout 'mail'

  def welcome(user)
    @user = user
    mail(subject: "Log-in details for biasthmawebinars.com", to: user.email)
  end

  def reminder_one_day(user)
    @user = user
    mail(subject: "Reminder: Tomorrow's webinar at biasthmawebinars.com", to: user.email)
  end

  def reminder_two_week(user)
    @user = user
    mail(subject: 'Reminder: Webinar on September 9, 2015 at biasthmawebinars.com', to: user.email)
  end

  def archive_email(user)
    @user = user
    mail(subject: 'A recently recorded webinar is now available to view at biasthmawebinars.com', to: user.email)
  end

  #def evaluation_email(user)
   # @user = user
   # mail(subject: 'Feedback re: the BI Asthma Webinar', to: user.email)
  #end

end
