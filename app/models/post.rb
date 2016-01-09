class Post < ActiveRecord::Base
  has_many :attachments
  validates :title, presence: true
  validates :content, presence: true
end
