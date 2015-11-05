class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :name, :email, :company, :job, :password,
                  :password_confirmation, :remember_me, :hcp, :nothcp, :reminder, :future

  INVALID_EMAILS = %w(virginmedia.com ee.co.uk plus.net aol.com aol.co.uk sky.com tiscali.co.uk btinternet.com gmail.com googlemail.com hotmail.co.uk hotmail.com live.co.uk yahoo.com yahoo.co.uk yahoo.gr yahoo.fr outlook.com outlook.co.uk icloud.com ymail.com mail.com bigstring.com talktalk.co.uk groovygecko.com liquidproductions.co.uk )
  validates_format_of :email,
                      :without => /#{INVALID_EMAILS.map{|a| Regexp.quote(a)}.join('|')}/,
                      :message => "Please register using your work email address."

  after_create :send_user_and_admin_notification

  def self.suitable_for_reminders
    where(reminder: true)
  end

  # Reminder emails

  def self.check_and_send_archive
    # should be sent on following dates
    # reminder_archive - sent nov 27th, jan 16, march 7
    date1 = Date.new(2015, 8, 12)
    date2 = Date.new(2015, 8, 14)
    date3 = Date.new(2015, 11, 6)

    # check if we are on one of the require days
    # send the email to the users who have opted in
    if date1.today? || date2.today? || date3.today?
      users = self.suitable_for_reminders
      users.each do |user|
        UserMailer.archive_email(user).deliver
      end
    end
  end

  # def self.check_and_send_evaluation
    # should be sent on following dates
    # reminder_evaluation - sent nov 28th, jan 17, march 8
    # date1 = Date.new(2013, 11, 28)
    # date2 = Date.new(2014, 1, 17)
    # date3 = Date.new(2014, 3, 8)

    # check if we are on one of the require days
    # send the email to the users who have opted in
    # if date1.today? || date2.today? || date3.today?
     # users = self.suitable_for_reminders
      #users.each do |user|
       # UserMailer.evaluation_email(user).deliver
      #end
    #end
  #end

  def self.check_and_send_one_day_reminders
    # should be sent on the following dates
    # reminder_one_day - sent on jul 7th, jul 15th, sept 8th
    date1 = Date.new(2014, 7, 7)
    date2 = Date.new(2014, 7, 15)
    date3 = Date.new(2015, 9, 8)

    if date1.today? || date2.today? || date3.today?
      users = self.suitable_for_reminders
      users.each do |user|
        UserMailer.reminder_one_day(user).deliver
      end
    end

  end

  def self.check_and_send_two_week_reminders
    # should be sent on the following dates
    #reminder_two_weeks - sent on nov 12, jan 10th, feb 20th
    date1 = Date.new(2014, 7, 9)
    date2 = Date.new(2014, 1, 10)
    date3 = Date.new(2014, 9, 2)

    if date1.today? || date2.today? || date3.today?
      users = self.suitable_for_reminders
      users.each do |user|
        UserMailer.reminder_two_week(user).deliver
      end
    end

  end


  private

  	def send_user_and_admin_notification
      AdminMailer.registration_notification(self).deliver
      UserMailer.welcome(self).deliver
  	end
end


 # EXCLUSION_DOMAINS = %w[
 #   gmail.com
 #   yahoo.com
 #   yahoo.co.uk
  #  hotmail.com
  #  hotmail.co.uk
 #   googlemail.com
 #   live.co.uk
#]

#EXCLUSION_REGEXP = Regexp.new('(?:' + EXCLUSION_DOMAINS.collect { |d| Regexp.escape(d)

#validates :email,
#  :format => {
#    :with => VALID_EMAIL_REGEXP,
#    :without => EXCLUSION_REGEXP,
#    :message => "%{value} may not be used to register. Please use your work email address."
#}