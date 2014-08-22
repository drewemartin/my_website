class Letter < ActiveRecord::Base

  validates :name, presence: true

  validates :email, presence: true
  validate :email_must_have_period
  validate :email_must_have_at_symbol
  validate :email_length


  validates :subject, presence: true

  validates :message, presence: true 

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

  def email_length
    unless email.nil?
      
      if email.length < 7 
        errors.add(:email, 'must follow name@site.com format')
      end

    end 
  end

end
