class CreateSites < ActiveRecord::Migration[6.0]
  def change
    create_table :sites do |t|
      t.references :user, null: false, foreign_key: true
      t.string :domain

      t.timestamps
    end
  end
end
