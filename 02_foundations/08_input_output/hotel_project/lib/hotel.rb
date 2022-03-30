require_relative "room"

class Hotel
  def initialize(name, room_list)
    @name = name
    @rooms = {}
    room_list.each { |k, v| @rooms[k] = Room.new(v) }
  end

  def name
    @name.split(" ").each(&:capitalize!).join(" ")
  end

  def rooms
    @rooms
  end

  def room_exists?(name)
    @rooms.key?(name)
  end

  def check_in(name, room_name)
    if !room_exists?(room_name)
      puts "sorry, room does not exist"
    elsif @rooms[room_name].add_occupant(name)
      puts "check in successful"
    else
      puts "sorry, room is full"
    end
  end

  def has_vacancy?
    @rooms.any? { |_, v| v.capacity - v.occupants.length > 0 }
  end

  def list_rooms
    @rooms.each { |k, v| print "#{k} #{v.available_space}\n" }
  end
end
