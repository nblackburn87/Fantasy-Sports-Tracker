class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.column :goals, :int
      t.column :assists, :int
      t.column :yellows, :int
      t.column :reds, :int
      t.column :minutes, :int

      t.timestamps
    end
  end
end
