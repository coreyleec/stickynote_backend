class CreateReminders < ActiveRecord::Migration[6.1]
  def change
    create_table :reminders do |t|
      
      t.string :title
      t.string :reminder_text
      t.string :datetime
      t.timestamp :reminder_date
      t.boolean :archived
      t.integer :user_id
    end
  end
end
