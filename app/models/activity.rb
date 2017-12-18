class Activity < ActiveRecord::Base
  # relations
  belongs_to :user
  has_many :orders
  
  # validations
  validates_presence_of :title, :description, :user
  
  # scopes
    scope :has_tickets_left, -> { where("participants < max_participants") }
    scope :order_by_date, -> { order(:date)}
  
  
  def amount_of_tickets_left
    max_participants - participants
  end
  
  def update_participants_count(number_of_participants)
    self.participants = self.participants + number_of_participants
    self.save
  end
end
