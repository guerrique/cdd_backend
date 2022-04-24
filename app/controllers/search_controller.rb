class SearchController < ApplicationController
  def index
    @text = params[:text]
    # @results = PgSearch.multisearch(:query)
    @results = PgSearch.multisearch(@text)
    render json: @results

  end
end
