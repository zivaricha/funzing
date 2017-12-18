class AddParticipantsWithDefaultToActivities < ActiveRecord::Migration
  def change
    add_column :activities, :participants, :integer, :default => 0
  end
end
