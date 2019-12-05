class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.references :discussion, null: false, foreign_key: true
      t.string :name
      t.string :email
      t.text :body
      t.string :ip_address
      t.string :user_agent

      t.timestamps
    end
  end
end
