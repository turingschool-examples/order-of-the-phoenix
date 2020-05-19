class SearchController < ApplicationController
  def index
    @members = PotterService.new
  end
end
