class CreateReminders < ActiveRecord::Migration[6.1]
  def change
    create_table :reminders do |t|
      
      t.string :title
      t.text :reminder
      t.string :datetime
      t.string :reminderdate
      t.boolean :archived
      t.integer :user_id
    end
  end
end
