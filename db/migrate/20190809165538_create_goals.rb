class CreateGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :goals do |t|
      t.string :name
      t.datetime :completion_date
      t.float :completion_percent

      t.timestamps
    end
  end
end
