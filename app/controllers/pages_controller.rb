class PagesController < ApplicationController

   #remove this before deploying to production
   #before_filter :authenticate

  def home
  end

  def coming_soon
  end

  def live
    @message = Message.new
  end

  def live_jul_8
    @message = Message.new
    @firstinteractive = Firstinteractive.new
  end
  
  def live_jul_16
    @message = Message.new
  end 

  def live_sept_9
    @message = Message.new
  end  

  def archive
  end

  def archive_jul_8
    @message = Message.new
  end
  
  def archive_jul_16
    @message = Message.new
  end 

  def archive_sept_9
    @message = Message.new
  end  

  def preregistration
  end

  def evaluation
    @feedback = Feedback.new
  end

  def firstinteractive
    @firstinteractive = Firstinteractive.new
  end

  def secondinteractive
    @secondinteractive = Secondinteractive.new
  end

  #protected

   # def authenticate
  	#  authenticate_or_request_with_http_basic do |username, password|
  	#  username == "admin" && password == "asthma2015"
  	# end
   # end

end