class CohortsController < ApplicationController

    def index
        render json: Cohort.all, status: :ok
    end

    def show
        cohort = Cohort.find(params[:id])
        render json: cohort, status: :ok
    end

    def create
        cohort = Cohort.create!(quote_params)
        render json: cohort, status: :created
    end


    private
    def quote_params
        params.permit(:start_date)
    end
end
