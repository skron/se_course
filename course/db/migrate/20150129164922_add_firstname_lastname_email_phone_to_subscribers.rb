class AddFirstnameLastnameEmailPhoneToSubscribers < ActiveRecord::Migration
  def change
    add_column :subscribers, :firstname, :string
    add_column :subscribers, :lastname, :string
    add_column :subscribers, :email, :string
    add_column :subscribers, :phone, :integer
  end
end
