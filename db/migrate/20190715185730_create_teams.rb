class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :teamname
      t.string :clubcolors
      t.string :venue
      t.string :image
      t.references :league
      t.references :user
    end
  end
end
