class BlogArticle < ActiveRecord::Base
  belongs_to :user
  has_many :comments

  validates :title, presence: true
  validates :body, presence: true
  validates :publish_now, presence: true

  validate :publish_now_is_yes_or_no

  def published_blogs
    where(publish_now: 'yes')
  end


  private
  def publish_now_is_yes_or_no
    unless publish_now == nil

      if publish_now.downcase != 'yes' && publish_now.downcase != 'no'
        errors.add(:publish_now, 'must be yes or no')
      end

    end    
  end
end
