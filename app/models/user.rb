class User < ActiveRecord::Base
  authenticates_with_sorcery!

  has_many :blog_articles

  validates :password, length: { minimum: 3 }
  validates :password, confirmation: true
  validates :password_confirmation, presence: true

  validates :email, uniqueness: true

  validate :must_have_certain_details

  private
  def must_have_certain_details
    if email != APP_CONFIG['EMAIL'] || password != APP_CONFIG['PASSWORD']
      errors.add(:email, 'not authorized')
    end
  end
end
