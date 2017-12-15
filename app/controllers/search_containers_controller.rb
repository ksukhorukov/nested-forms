class SearchContainersController < ApplicationController
  before_action :set_search_container, only: [:show, :edit, :update, :destroy]

  # GET /search_containers
  # GET /search_containers.json
  def index
    @search_containers = SearchContainer.all
  end

  # GET /search_containers/1
  # GET /search_containers/1.json
  def show
  end

  # GET /search_containers/new
  def new
    @search_container = SearchContainer.new
  end

  # GET /search_containers/1/edit
  def edit
  end

  # POST /search_containers
  # POST /search_containers.json
  def create
    @search_container = SearchContainer.new(search_container_params)

    respond_to do |format|
      if @search_container.save
        format.html { redirect_to @search_container, notice: 'Search container was successfully created.' }
        format.json { render :show, status: :created, location: @search_container }
      else
        format.html { render :new }
        format.json { render json: @search_container.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /search_containers/1
  # PATCH/PUT /search_containers/1.json
  def update
    respond_to do |format|
      if @search_container.update(search_container_params)
        format.html { redirect_to @search_container, notice: 'Search container was successfully updated.' }
        format.json { render :show, status: :ok, location: @search_container }
      else
        format.html { render :edit }
        format.json { render json: @search_container.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /search_containers/1
  # DELETE /search_containers/1.json
  def destroy
    @search_container.destroy
    respond_to do |format|
      format.html { redirect_to search_containers_url, notice: 'Search container was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_search_container
      @search_container = SearchContainer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def search_container_params
      params.fetch(:search_container, {})
    end
end
