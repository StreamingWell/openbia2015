desc "This task is called by the Heroku scheduler add-on"


# this is what needs to happen
# if a user has opted in then they are sent reminder emails
# there are three of them to be sent on different dates
# reminder_two_weeks - sent on nov 12, jan 1st, feb 20th
# reminder_one_day - sent on nov 25th, jan 14, march 5
# reminder_archive - sent nov 27th, jan 16, march 7

# This task will be run everyday at 8am UTC
task :send_reminders => :environment do
    puts 'Checking to see if reminder emails should be sent'
    User.check_and_send_one_day_reminders
    User.check_and_send_two_week_reminders
    User.check_and_send_archive
    User.check_and_send_evaluation
    puts 'Done!'
end