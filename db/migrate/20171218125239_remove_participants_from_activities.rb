class RemoveParticipantsFromActivities < ActiveRecord::Migration
  def change
    remove_column :activities, :participants, :integer
  end
end
