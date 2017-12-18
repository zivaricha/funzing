class Activity < ActiveRecord::Base
  # relations
  belongs_to :user
  has_many :orders
  
  # validations
  validates_presence_of :title, :description, :user
end
