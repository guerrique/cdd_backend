class DocsController < ApplicationController
  before_action :set_doc, only: [:show, :update, :destroy]

  # GET /docs
  def index
    @docs = Doc.all

    render json: @docs
  end

  # GET /docs/1
  def show
    # render json: @doc, include: { directors: { only: [:name, :id] } }
    render json: @doc
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
      params.fetch(:doc, {})
    end
end
