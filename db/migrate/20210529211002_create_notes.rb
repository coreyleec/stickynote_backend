class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.string :title
      t.timestamp :datetime
      t.text :note

      t.integer :user_id
    end
  end
end
