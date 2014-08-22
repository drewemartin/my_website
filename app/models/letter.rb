class Letter < ActiveRecord::Base

  validates :name, presense: true

  validates :email, presense: true
  validate :email_must_have_period
  validate :email_must_have_at_symbol


  validates :subject, presense: true

  validates :message, presense: true 

  private
  def email_must_have_at_symbol
    unless email.nil?

      if email.split('').include?('@') == false
        errors.add(:email, 'must include @ symbol')
      end 

    end  
  end

  def email_must_have_period
    unless email.nil?

      if email.split('').include?('.') == false
        errors.add(:email, 'must include . (period) symbol')      
      end

    end  
  end

end
