class CreateReminders < ActiveRecord::Migration[6.1]
  def change
    create_table :reminders do |t|
      t.string :reminder_text
      t.timestamp :datetime
      
      t.integer :user_id
    end
  end
end
