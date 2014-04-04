class SetDefaults < ActiveRecord::Migration
  def change
    change_column :players, :goals, :int, :default => 0
    change_column :players, :assists, :int, :default => 0
    change_column :players, :yellows, :int, :default => 0
    change_column :players, :reds, :int, :default => 0
    change_column :players, :minutes, :int, :default => 0
  end
end
