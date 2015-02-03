class AddParticipationToSubscribers < ActiveRecord::Migration
  def change
    add_column :subscribers, :participation, :string
  end
end
