class UserMailer < ActionMailer::Base
  default :from => "noreply@biasthmawebinars.com"
  layout 'mail'

  def welcome(user)
    @user = user
    mail(subject: "Log-in details for biasthmawebinars.com", to: user.email)
  end

  def reminder_one_day(user)
    @user = user
    mail(subject: "Reminder re: tomorrow's BI Asthma Webinar", to: user.email)
  end

  def reminder_two_week(user)
    @user = user
    mail(subject: 'Reminder re: the BI Asthma Webinar on July 8, 2015', to: user.email)
  end

  def archive_email(user)
    @user = user
    mail(subject: 'Notification that a recent BI Asthma Webinar is now available to view', to: user.email)
  end

  #def evaluation_email(user)
   # @user = user
   # mail(subject: 'Feedback re: the BI Asthma Webinar', to: user.email)
  #end

end
