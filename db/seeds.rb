puts "Deleting seeds! 🗑"
puts "Creating seeds! 🌸"

Note.destroy_all
Reminder.destroy_all

reminders = [
  {
    title: "This is a reminder title",
    datetime: "0",
    reminder_text: "This is a reminder",
    reminder_date: "0"
  },
  {
    title: "This is a reminder title",
    datetime: "0",
    reminder_text: "This is a reminder",
    reminder_date: "0"
  },
  {
    title: "This is a reminder title",
    datetime: "0",
    reminder_text: "This is a reminder",
    reminder_date: "0"
  },
  {
    title: "This is a reminder title",
    datetime: "0",
    reminder_text: "This is a reminder",
    reminder_date: "0"
  },
  {
    title: "This is a reminder title",
    datetime: "0",
    reminder_text: "This is a reminder",
    reminder_date: "0"
  }
]
notes = [
    {
      title: "this is a title of a note",
      datetime: "0",
      note: "this is a note",
    },
    {
      title: "this is a title of a note",
      datetime: "0",
      note: "this is a note",
    },
    {
      title: "this is a title of a note",
      datetime: "0",
      note: "this is a note",
    },
    {
      title: "this is a title of a note",
      datetime: "0",
      note: "this is a note",
    },
    {
      title: "this is a title of a note",
      datetime: "0",
      note: "this is a note",
    },
    {
      title: "this is a title of a note",
      datetime: "0",
      note: "this is a note",
    },
    {
      title: "this is a title of a note",
      datetime: "0",
      note: "this is a note",
    },
    {
      title: "this is a title of a note",
      datetime: "0",
      note: "this is a note",
    },
    {
      title: "this is a title of a note",
      datetime: "0",
      note: "this is a note",
    },
    {
      title: "this is a title of a note",
      datetime: "0",
      note: "this is a note",
    },
    {
      title: "this is a title of a note",
      datetime: "0",
      note: "this is a note",
    },
    {
      title: "this is a title of a note",
      datetime: "0",
      note: "this is a note",
    },
    {
      title: "this is a title of a note",
      datetime: "0",
      note: "this is a note",
    },
    {
      title: "this is a title of a note",
      datetime: "0",
      note: "this is a note",
    },
    
  ]


notes.each do |note_hash|
    Note.create(note_hash)

reminders.each do |reminder_hash|
    Reminder.create(reminder_hash)

end



puts "Done creating seeds ✅"
end