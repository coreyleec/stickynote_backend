puts "Deleting seeds! 🗑"
puts "Creating seeds! 🌸"

Note.destroy_all

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
end



puts "Done creating seeds ✅"