class Note < ActiveRecord::Base
  belongs_to :page
  belongs_to :user
  default_scope -> { order('created_at DESC') }
  validates :content, presence: true
  validates :user_id, presence: true
  attr_accessible :content, :user_id, :page
end
