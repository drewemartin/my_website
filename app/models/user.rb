class User < ActiveRecord::Base
  authenticates_with_sorcery!

  has_many :blog_articles
  has_many :comments, through: :blog_articles 

  validates :password, length: { minimum: 3 }
  validates :password, confirmation: true
  validates :password_confirmation, presence: true

  validates :email, uniqueness: true

  validate :must_have_certain_details


  def blogs_in_order
    blog_articles.order(created_at: :desc)
  end

  


  private
  def must_have_certain_details
    if email != APP_CONFIG['EMAIL'] || password != APP_CONFIG['PASSWORD']
      errors.add(:email, 'not authorized')
    end
  end

  
end
