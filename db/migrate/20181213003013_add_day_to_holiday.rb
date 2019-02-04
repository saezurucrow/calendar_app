class AddDayToHoliday < ActiveRecord::Migration[5.2]
  def change
    add_column :holidays, :day, :date
    add_column :holidays, :name, :string
    add_column :holidays, :memo, :text
  end
end
