class CreateHolidays < ActiveRecord::Migration[5.2]
  def change
    create_table :holidays do |t|

      t.timestamps
    end
  end
end
