class Activity < ActiveRecord::Base
  # relations
  belongs_to :user
  has_many :orders
  
  # validations
  validates_presence_of :title, :description, :user
  
  # scopes
    scope :has_tickets_left, -> { where("participants < max_participants") }
    scope :order_by_date, -> { order(:date)}
  
end
