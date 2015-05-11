class FeedbackController < ApplicationController

  def new
    @feedback = Feedback.new
  end

  def create
    @feedback = Feedback.new(params[:feedback])
    if @feedback.valid?
      NotificationsMailer.new_feedback(@feedback, current_user).deliver
      redirect_to(root_path, :notice => "Your feedback was successfully submitted.")
    else
      redirect_to(evaluation_path, :notice => "Please fill all fields.")
    end
  end

end
