class UsersController < ApplicationController


    def show
        user = User.find(params[:id])
        render json: user, status: :ok
    end

    def create
        user = User.create!(user_params)
        render json: user, stauts: :created
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
        render json: {}
        head :no_content
    end


    private
    def user_params
        params.permit(:username, :password, :email, :cohort_id)
    end
end
