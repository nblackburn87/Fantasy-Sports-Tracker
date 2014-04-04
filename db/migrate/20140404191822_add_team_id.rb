class AddTeamId < ActiveRecord::Migration
  def change
    add_column :players, :team_id, :int

    create_table :teams do |t|
      t.column :name, :string

      t.timestamps
    end
  end
end
