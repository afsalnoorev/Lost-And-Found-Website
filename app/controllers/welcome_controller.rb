class WelcomeController < ApplicationController

  def send_mail
     WelcomeMailer.send_welcome_mail.deliver_now!
     render :text => "Mail sent"
  end


end