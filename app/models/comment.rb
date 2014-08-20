class Comment < ActiveRecord::Base

  belongs_to :blog_article

  validates :body, presence: true
  validate :body_maximum_length

  validates :email, presence: true
  validate :email_must_include_certain_characters

  validates :name, presence: true
  validate :name_length

  private
  def body_maximum_length
    unless body.nil?

      if body.length >= 300
        errors.add(:body, 'must be less than 300 character')
      end

    end
  end

  def email_must_include_certain_characters
    unless email.nil?

      if email.include?('@') != true || 
        email.include?('.') != true 
        errors.add(:email, "must be valid with '@' & '.' characters")
      end
      
    end
  end

  def name_length
    unless name.nil?
      
      if name.length < 3
        errors.add(:name, 'must be longer than 2 characters')
      end
      
    end
  end
end
