class CreateRosterTable < ActiveRecord::Migration
  def change
    create_table :weeks do |t|
      t.column :start_date, :datetime
      t.column :end_date, :datetime

      t.timestamps
    end

    create_table :rosters do |t|
      t.column :week_id, :int
      t.column :player_id, :int

      t.timestamps
    end
  end
end
