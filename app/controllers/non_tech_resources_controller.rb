class NonTechResourcesController < ApplicationController
    def index
        render json: NonTechResource.all, status: :ok
    end

    def show
        nonTechResource = NonTechResource.find(params[:id])
        render json: nonTechResource, status: :ok
    end

    def create
        nonTechResource = NonTechResource.create!(nonTechResource_params)
        render json: nonTechResource, status: :created
    end


    private
    def nonTechResource_params
        params.permit(:title, :url)
    end
end
