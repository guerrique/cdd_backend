class DocsController < ApplicationController
  before_action :set_doc, only: [:show, :update, :destroy]
  wrap_parameters :doc, include: [:name, :chinese_name, :year, :duration, :poster, :doc_text_short, :doc_text_long, :trailer_link, :doc_text_source, :awards, :useful_links, :director_ids]

  # GET /docs
  def index

    # if params[:query].present?
    if params[:search].present?

      # sql_query = " \
      # docs.title ILIKE :query \
      # "

      # @docs = Doc.where(sql_query, query: "%#{params[:query]}%")
      @docs = Doc.search(params[:search])
    else
      @docs = Doc.all
    end

    render json: @docs
  end

  # GET /docs/1
  def show
    # see comments on directors_controller.rb
    # render json: @doc, include: { directors: { only: [:name, :id] } }
    # render json: @doc
    render json: @doc, include: ['directors'], fields: { directors: [:name, :id], doc: [:id, :name, :chinese_name, :year, :duration, :poster, :doc_text_short, :doc_text_long, :doc_text_source, :awards, :trailer_link, :useful_links] }
  end

  # POST /docs
  def create
    @doc = Doc.new(doc_params)

    if @doc.save
      render json: @doc, status: :created, location: @doc
    else
      render json: @doc.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /docs/1
  def update
    if @doc.update(doc_params)
      # render json: @doc
      render json: @doc, include: { directors: { only: [:name, :id] } }
    else
      render json: @doc.errors, status: :unprocessable_entity
    end
  end

  # DELETE /docs/1
  def destroy
    @doc.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doc
      @doc = Doc.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def doc_params
      params.fetch(:doc, {}).permit(:name, :chinese_name, :year, :duration, :poster, :doc_text_short, :doc_text_long, :trailer_link, :doc_text_source, {:awards => []}, {:useful_links => []},  {:director_ids => []}, :search)
    end
end
