
class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :marital_status
      t.integer :date_of_birth
      t.string :father_name
      t.string :mother_name
      t.string :nationality
      t.string :state
      t.string :city
      t.string :address
      t.integer :pincode
      t.string :religion
      t.integer :height
      t.string :diet
      t.string :mobile_number
      t.string :hobbies
      t.string :college_name
      t.string :job
      t.integer :income
      t.text :about_yourself

      t.timestamps
    end
  end
end
