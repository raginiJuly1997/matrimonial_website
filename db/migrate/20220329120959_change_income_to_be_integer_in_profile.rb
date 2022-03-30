class ChangeIncomeToBeIntegerInProfile < ActiveRecord::Migration[6.1]
  def change
    change_column :profiles, :income, :bigint

  end
end
