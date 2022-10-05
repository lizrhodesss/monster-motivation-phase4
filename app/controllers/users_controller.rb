class UsersController < ApplicationController
    skip_before_action :authorize, only: :create

    def show
        render json: @current_user
        # user = User.find(params[:id])
        # render json: user, status: :ok
    end

    def create
        user = User.create!(user_params)
        session[:user_id] = user.id
        render json: user, stauts: :created
    end
    
    def update
        user = User.find(params[:id])
        user.update!(user_params)
        render json: user, status: :ok
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
