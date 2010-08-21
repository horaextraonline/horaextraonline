class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string :name
      t.string :type
      t.string :local
      t.datetime :date_time
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
