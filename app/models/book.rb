class Book < ActiveRecord::Base
  belongs_to :page
  belongs_to :interest
  attr_accessible :author, :link, :name, :slug
  extend FriendlyId
  friendly_id :name, use: :slugged
  validates :name, presence: true
  validates :author, presence: true
  validates :link, presence: true
end
