module Admin
  class RegionsController < ApplicationController
    before_action :set_region, only: [:show, :edit, :update, :destroy]

    # GET /regions
    # GET /regions.json
    def index
      @regions = Region.all
    end

    # GET /regions/1
    # GET /regions/1.json
    def show
    end

    # GET /regions/new
    def new
      @region = Region.new
    end

    # GET /regions/1/edit
    def edit
    end

    # POST /regions
    # POST /regions.json
    def create
      @region = Region.new region_params
        if @region.save
          redirect_to admin_regions_path, notice: "Region has beed created successfully"
        else
          render :new
        end
    end

    # PATCH/PUT /regions/1
    # PATCH/PUT /regions/1.json
    def update
      if @region.update region_params
        redirect_to admin_regions_path, notice: "Region has beed updated successfully"
      else
        render :edit
      end
    end

    # DELETE /regions/1
    # DELETE /regions/1.json
    def destroy
      @region.destroy
      redirect_to admin_regions_path, notice: "Region has beed deleted successfully"
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_region
        @region = Region.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def region_params
        params.require(:region).permit(:name)
      end
  end

end
