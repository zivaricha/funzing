class Activity < ActiveRecord::Base
  # relations
  belongs_to :user
  
  # validations
  validates_presence_of :title, :description, :user
end
