class ContactController < ApplicationController

  def new
    @message = Message.new
  end

  def create
    @user = current_user
    @message = Message.new(params[:message])

    if @message.valid?
      @success = true
      NotificationsMailer.new_message(@message, @user).deliver
      respond_to do |format|
        format.js
        format.html
      end

    else
      @success = false

      respond_to do |format|
        format.js
      end
    end
  end

end