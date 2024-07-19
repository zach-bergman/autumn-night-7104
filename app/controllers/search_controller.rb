class SearchController < ApplicationController
  def index
    @facade = SearchFacade.new.get_members_by_nation(params[:nation])
  end
end

# @facade = SearchFacade.new.get_members_by_nation_pages(params[:nation])