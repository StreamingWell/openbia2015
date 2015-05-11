class UserMailer < ActionMailer::Base
  default :from => "noreply@lutswebinar.co.uk"
  layout 'mail'

  def welcome(user)
    @user = user
    mail(subject: "Log-in details for the Urology Lunchtime Webinar", to: user.email)
  end

  def reminder_one_day(user)
    @user = user
    mail(subject: "Reminder re tomorrow's Urology Lunchtime Webinar", to: user.email)
  end

  def reminder_two_week(user)
    @user = user
    mail(subject: 'Reminder re the Urology Lunchtime Webinar on July 4th 2014', to: user.email)
  end

  def archive_email(user)
    @user = user
    mail(subject: 'Notification that a recent Urology Lunchtime Webinar is now available to view', to: user.email)
  end

  def evaluation_email(user)
    @user = user
    mail(subject: 'Feedback re the Urology Lunchtime Webinar', to: user.email)
  end

end
