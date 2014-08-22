require "rails_helper"
#test works w/ basic mailer state
RSpec.describe GuestMailer, :type => :mailer do
  describe 'send_to_admin' do

    let(:mail) {GuestMailer.send_to_admin}

    it 'renders the headers' do

      expect(mail.subject).to eq('email from your site')
      expect(mail.to).to eq(['drew.e.martin@gmail.com'])
      expect(mail.from).to eq(['drew.e.martin@gmail.com'])

    end

    it "renders the message" do
      expect(mail.body.encoded).to match("hello")
    end

  end
end
