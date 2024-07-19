require "rails_helper"

RSpec.describe "Welcome Root Path" do
  it "has a form to search, directs to search index " do
    visit root_path

    select "Fire Nation", from: "nation"
    click_button("Search For Members")

    expect(current_path).to eq(search_path)
  end
end
