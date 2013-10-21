class ResourcesController < ApplicationController
  load_and_authorize_resource
  before_action :set_resource, only: [:show, :edit, :update, :destroy]

  # GET /resources
  def index
    @resources.includes(:status)
    @quote = Quote.first
  end

  # GET /resources/new
  def new
  end

  # GET /resources/1/edit
  def edit
  end

  # POST /resources
  def create

    respond_to do |format|
      if @resource.save
        format.html { redirect_to resources_url, notice: 'Resource was successfully created.' }
      else
        format.html { render action: 'new' }
      end
    end
  end

  # PATCH/PUT /resources/1
  def update
    respond_to do |format|
      if @resource.update(resource_params)
        format.html { redirect_to resources_url, notice: 'Resource was successfully updated.' }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  # DELETE /resources/1
  def destroy
    @resource.destroy
    respond_to do |format|
      format.html { redirect_to resources_url }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resource
      @resource = Resource.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def resource_params
      params.require(:resource).permit(:name, :status_id)
    end
end
