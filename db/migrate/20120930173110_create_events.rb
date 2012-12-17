class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :location
      t.date :date
      t.time :time
      t.belongs_to :group
      t.timestamps
    end
  end
end
