class GuestMailer < ActionMailer::Base
  default from: "drew.e.martin@gmail.com"

  def send_to_admin
    

    mail(to: 'drew.e.martin@gmail.com', 
      subject: "email from your site")
  end

end
