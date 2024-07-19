class Member
  attr_reader :id, :allies, :enemies, :photo, :affiliation, :name

  def initialize(data)
    @id = data[:_id]
    @allies = data[:allies]
    @enemies = data[:enemies]
    @photo = data[:photoUrl]
    @affiliation = data[:affiliation]
    @name = data[:name]
  end
end