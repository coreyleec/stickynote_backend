class Application
  def call(env)
    # binding.pry 
    req = Rack::Request.new(env)

    # TEST
    if req.path.match(/test/)
      return [200, { "Content-Type" => "application/json" }, [{ :message => "test response" }.to_json]]
      
      # GET NOTES
      elsif req.path.match(/notes/) && req.get?
        return [200, { "Content-Type" => "application/json" }, [ Note.all.to_json]]
      
      # POST NOTES
      elsif req.path.match(/notes/) && req.post?
        note_hash = JSON.parse(req.body.read)
        new_note = Note.create(note_hash)
        
        return [201, { 'Content-Type' => 'application/json' }, [ new_note.to_json ]]
        
      # DELETE NOTES
      elsif req.path.match(/notes/) && req.delete?
        # binding.pry
        id = req.path.split("/").last
        found_note = Note.find(id)
        found_note.destroy
        return [200, { 'Content-Type' => 'application/json' }, [ found_note.to_json ]]

      # UPDATE NOTES
        elsif req.path.match(/notes/) && req.patch?
          update_note_hash = JSON.parse(req.body.read)
          id = req.path.split("/").last
          found_note = Note.find(id)
          found_note.update(update_note_hash)
          return [200, { 'Content-Type' => 'application/json' }, [ found_note.to_json ]]

      # GET REMINDERS
        elsif req.path.match(/reminders/) && req.get?
          return [200, { "Content-Type" => "application/json" }, [ Reminder.all.to_json]]
      
      # POST REMINDERS
        elsif req.path.match(/reminders/) && req.post?
          note_hash = JSON.parse(req.body.read)
          new_note = Reminder.create(note_hash)
        
        return [201, { 'Content-Type' => 'application/json' }, [ new_note.to_json ]]
        
      # DELETE REMINDERS
      elsif req.path.match(/reminders/) && req.delete?
        # binding.pry
        id = req.path.split("/").last
        found_note = Reminder.find(id)
        found_note.destroy
        return [200, { 'Content-Type' => 'application/json' }, [ found_note.to_json ]]

      # UPDATE REMINDERS
        elsif req.path.match(/reminders/) && req.patch?
          update_note_hash = JSON.parse(req.body.read)
          id = req.path.split("/").last
          found_note = Reminder.find(id)
          found_note.update(update_note_hash)
          return [200, { 'Content-Type' => 'application/json' }, [ found_note.to_json ]]





    else
      # send_not_found
      return [404, {}, ["Path not found!!!"]] 
    end
  end

  private

  def send_hello
    return [200, { "Content-Type" => "application/json" }, [{ :message => "hello world!" }.to_json]]
  end

  def send_not_found
    return [404, {}, ["Path not found!!!"]]
  end
end
