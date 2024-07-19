class SearchFacade
  def initialize
    @service = AirBenderService.new
  end

  def get_members_by_nation(nation)
    members = @service.get_members_by_nation(nation)

    members.map do |member_data|
      Member.new(member_data)
    end
  end
end