class CreateProposals < ActiveRecord::Migration[5.2]
  def change
    create_table :proposals do |t|
      t.belongs_to :user
      t.belongs_to :sport
      t.text :description, null: false

      t.timestamps null: false
    end
  end
end
