class CreateTextMessages < ActiveRecord::Migration
  def change
    create_table :text_messages do |t|
      t.string :message
      t.string :number
      t.integer :user_id
      t.integer :organization_id

      t.timestamps null: false
    end
  end
end
