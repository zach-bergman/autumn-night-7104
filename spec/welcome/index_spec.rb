require "rails_helper"

RSpec.describe "Welcome Root Path" do
  it "has a form to search, directs to search index " do
    visit "/"

    fill_in :nation, with: "Fire Nation"
    click_button("Search For Members")

    expect(current_path).to eq(search_path)

    expect(page).to have_content("__ members of the Fire Nation")
    expect(page).to have_css(".member", count: "__")

    within(first(".member")) do
      within(".name") do
        expect(page).to have_content("Name: __")
      end
      within(".allies") do
        expect(page).to have_content("Name: __")
      end
      within(".enemies") do
        expect(page).to have_content("Name: __")
      end
      within(".photo") do
        expect(page).to have_content("Name: __")
      end
      within(".affiliation") do
        expect(page).to have_content("Name: __")
      end
    end



  end
end

# As a user,
# When I visit "/"
# And I Select "Fire Nation" from the select field
# (Note: Use the existing select field)
# And I click "Search For Members"
# Then I should be on page "/search"
# Then I should see the total number of people who live in the Fire Nation. (should be close to 100)
# And I should see a list with the detailed information for the first 25 members of the Fire Nation.

# And for each of the members I should see:
# - The name of the member (and their photo, if they have one)
# - The list of allies or "None"
# - The list of enemies or "None"
# - Any affiliations that the member has
