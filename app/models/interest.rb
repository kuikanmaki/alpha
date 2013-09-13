class Interest < ActiveRecord::Base
  belongs_to :user
  belongs_to :page
  has_many :books
  default_scope :order => 'name ASC'
  attr_accessible :user_id, :page_id
  validates :user_id, :uniqueness => { :scope => :page_id }
end