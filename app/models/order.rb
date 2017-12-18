class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :activity
  
  # need to validate wheter or not order can or canot be booked depending on tickets left
  validate :exceed_tickets_limit
  
  def exceed_tickets_limit
    if self.amount_of_tickets > self.activity.amount_of_tickets_left
      errors.add(:amount_of_tickets, "There is not enough tickets left. please try again")
      return false
    end
  end
end
