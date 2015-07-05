class SecondinteractiveController < ApplicationController

  def new
    @secondinteractive = secondinteractive.new
  end

  def create
    @secondinteractive = secondinteractive.new(params[:secondinteractive])
    if @secondinteractive.valid?
      NotificationsMailer.new_secondinteractive(@secondinteractive, current_user).deliver
      redirect_to(live_jul_8_path, :notice => "Your answers were successfully submitted.")
    else
      redirect_to(secondinteractive_path, :notice => "Please fill all fields.")
    end
  end

end
