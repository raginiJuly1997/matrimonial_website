class ChangeDateOfBirthToBeIntegerInProfile < ActiveRecord::Migration[6.1]
  def change
    change_column :profiles, :date_of_birth, :date
  end
end
