class QuotesController < ApplicationController


   
    def index
        render json: Quote.all, status: :ok
    end

    def show
        quote = Quote.find(params[:id])
        render json: quote, status: :ok
    end

    def create
        quote = Quote.create!(quote_params)
        render json: quote, status: :created
    end


    private
    def quote_params
        params.permit(:quote, :author)
    end
end
