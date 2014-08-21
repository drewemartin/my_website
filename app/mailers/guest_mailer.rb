class GuestMailer < ActionMailer::Base
  default from: "from@example.com"

  def send_to_admin(mail)
    @mail = mail

    mail(to: 'drew.e.martin@gmail.com', 
      subject: "#{@mail.name} emailed you 
      from your site")
  end

end
