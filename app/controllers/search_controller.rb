class SearchController < ApplicationController
  def index
    @members = PotterService.new.members
  end
end
