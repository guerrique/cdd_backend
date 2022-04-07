class SearchEntriesController < ApplicationController
  def index
    @search_entries = SearchEntry.where("title LIKE ?", "%#{params[:query]}%") if params[:query]

    render json: @search_entries
  end
end
