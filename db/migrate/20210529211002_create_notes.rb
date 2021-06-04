class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      
      t.string :title
      t.text :note
      t.string :datetime
      t.boolean :archived
      t.integer :user_id
      
    end
  end
end
