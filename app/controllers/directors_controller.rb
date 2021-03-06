class DirectorsController < ApplicationController
  before_action :set_director, only: [:show, :update, :destroy]

  # GET /directors
  def index
    if params[:search].present?

      # sql_query = " \
      # directors.title ILIKE :query \
      # "

      # @directors = Doc.where(sql_query, query: "%#{params[:query]}%")
      @directors = Director.search(params[:search])
    else
      @directors = Director.all
    end

    # render json: @directors
    render json: @directors, fields: {directors: [:name, :id] }
  end

  # GET /directors/1
  def show
    # works if not using active_model_serializers
    # render json: @director, include: { docs: { only: [:name, :id, :year] } }

    # works if using active_model_serializers and conforming to JSON API specs
    # render json: @director

    # works coz that's just what I need to display
    render json: @director, include: ['docs'], fields: {docs: [:name, :id, :year], director: [:name, :id, :useful_links, :photo, :bio_short, :bio_long, :bio_source]}
  end

  # POST /directors
  def create
    @director = Director.new(director_params)

    if @director.save
      render json: @director, status: :created, location: @director
    else
      render json: @director.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /directors/1
  def update
    if @director.update(director_params)
      render json: @director
    else
      render json: @director.errors, status: :unprocessable_entity
    end
  end

  # DELETE /directors/1
  def destroy
    @director.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_director
      @director = Director.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def director_params

      params.fetch(:director, {}).permit(:name, :birth_year, :death_year, :bio_short, :bio_long, :bio_source, :photo, {:useful_links => []}, :search)
    end
end
