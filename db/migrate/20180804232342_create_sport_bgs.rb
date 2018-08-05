class CreateSportBgs < ActiveRecord::Migration[5.2]
  def change
    create_table :sport_bgs do |t|
      t.belongs_to :user
      t.belongs_to :sport
      t.integer :years, null: false

      t.timestamps null: false
    end
  end
end
