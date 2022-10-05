class TechResourcesController < ApplicationController

    def index
        render json: TechResource.all, status: :ok
    end

    def show
        techResource = TechResource.find(params[:id])
        render json: techResource, status: :ok
    end

    def create
        techResource = TechResource.create!(techResource_params)
        render json: techResource, status: :created
    end


    private
    def techResource_params
        params.permit(:title, :url)
    end
end
