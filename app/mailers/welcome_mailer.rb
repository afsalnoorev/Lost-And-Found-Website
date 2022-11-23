class WelcomeMailer < ApplicationMailer

  def send_welcome_mail

    mail(to:"afsalnoor97@gmail.com",from:"afsalnoor97@gmail.com",subject:"test mail",
              message: "hiii")

  end

end

