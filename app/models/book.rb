class Book < ActiveRecord::Base
  has_and_belongs_to_many :pages
  attr_accessible :author, :link, :name, :slug
  extend FriendlyId
  friendly_id :name, use: :slugged
  validates :name, presence: true
  validates :author, presence: true
  validates :link, presence: true
end
