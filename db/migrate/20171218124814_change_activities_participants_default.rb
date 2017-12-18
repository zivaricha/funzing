class ChangeActivitiesParticipantsDefault < ActiveRecord::Migration
  def change
    change_column_default :activities, :participants, from: nil, to: 0
  end
end
