class Post < ActiveRecord::Base
  has_many :attachments, dependent: :destroy
  accepts_nested_attributes_for :attachments
  validates :title, presence: true
  validates :content, presence: true
end
