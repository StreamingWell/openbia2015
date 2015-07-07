class FirstinteractiveController < ApplicationController

  def new
    @firstinteractive = Firstinteractive.new
  end

  def create
    @firstinteractive = Firstinteractive.new(params[:firstinteractive])
    if @firstinteractive.valid?
      NotificationsMailer.new_firstinteractive(@firstinteractive, current_user).deliver
      redirect_to(live_path)
    else
      redirect_to(firstinteractive_path, :notice => "Please fill all fields.")
    end
  end

end
