require "rails_helper"

RSpec.describe AirBenderService do
  describe "initialize" do
    it "exists" do
      service = AirBenderService.new
  
      expect(service).to be_a AirBenderService
    end
  end

  describe "#conn" do
    it "creates a Faraday connection" do
      connection = AirBenderService.new.conn

      expect(connection).to be_a Faraday::Connection
    end
  end

  describe "get_url" do
    it "can get a response from the API", :vcr do
      response = AirBenderService.new.get_url("api/v1/characters?affiliation=Fire+Nation")

      expect(response).to be_an Array

      expect(response.first).to have_key(:_id)
      expect(response.first[:_id]).to be_a String
      expect(response.first).to have_key(:allies)
      expect(response.first[:allies]).to be_an Array
      expect(response.first).to have_key(:enemies)
      expect(response.first[:enemies]).to be_an Array
      expect(response.first).to have_key(:photoUrl)
      expect(response.first[:photoUrl]).to be_a String
      expect(response.first).to have_key(:affiliation)
      expect(response.first[:affiliation]).to be_a String
      expect(response.first).to have_key(:name)
      expect(response.first[:name]).to be_a String
    end
  end
end