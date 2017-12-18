class AddParticipantsToActivities < ActiveRecord::Migration
  def change
    add_column :activities, :participants, :integer
  end
end
