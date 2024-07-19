require "rails_helper"

RSpec.describe "Search Index" do
  it "has a form to search, directs to search index " do
    visit root_path

    fill_in :nation, with: "Fire Nation"
    click_button("Search For Members")

    expect(current_path).to eq(search_path)
  end
end