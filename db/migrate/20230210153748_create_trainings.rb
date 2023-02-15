class CreateTrainings < ActiveRecord::Migration[7.0]
  def change
    create_table :trainings do |t|
      t.string :title
      t.date :date
      t.datetime :start_at
      t.datetime :end_at
      t.string :description
      t.string :coach
      t.string :address
      t.string :title_address
      t.integer :price
      t.integer :participation
      t.timestamps
    end
  end
end
