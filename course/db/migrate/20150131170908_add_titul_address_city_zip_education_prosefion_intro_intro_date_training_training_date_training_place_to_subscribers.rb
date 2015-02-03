class AddTitulAddressCityZipEducationProsefionIntroIntroDateTrainingTrainingDateTrainingPlaceToSubscribers < ActiveRecord::Migration
  def change
    add_column :subscribers, :titul, :string
    add_column :subscribers, :address, :string
    add_column :subscribers, :city, :string
    add_column :subscribers, :zip, :integer
    add_column :subscribers, :education, :string
    add_column :subscribers, :profesion, :string
    add_column :subscribers, :intro, :string
    add_column :subscribers, :intro_date, :date
    add_column :subscribers, :training, :string
    add_column :subscribers, :training_date, :date
    add_column :subscribers, :training_place, :string
  end
end
