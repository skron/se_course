class AddNazevIcoToSubscribers < ActiveRecord::Migration
  def change
    add_column :subscribers, :nazev, :string
    add_column :subscribers, :ico, :integer
  end
end
