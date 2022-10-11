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

    def update
        quote = Quote.find(params[:id])
        quote.update!(quote_params)
	    render json: quote, status: :ok
    end

    def destroy
        Quote.find(params[:id]).destroy
        render json: {}
        head :no_content
    end


    private
    def quote_params
        params.permit(:quote, :author)
    end
end
