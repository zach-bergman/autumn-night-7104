require "rails_helper"

RSpec.describe SearchFacade do
  it "exists with no arguments passed" do
    facade = SearchFacade.new

    expect(facade).to be_a(SearchFacade)
  end

  describe "get_members_by_nation" do
    it "returns an array of member objects", :vcr do
      facade = SearchFacade.new
      members = facade.get_members_by_nation("Fire+Nation")

      expect(members).to be_an Array
      
      members.each do |member|
        expect(member).to be_a Member
      end
    end
  end
end