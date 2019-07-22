class CreateFandoms < ActiveRecord::Migration[5.2]
  def change
    create_table :fandoms do |t|
      t.references :user
      t.references :team
    end
  end
end
