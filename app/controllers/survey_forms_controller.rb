class SurveyFormsController < ApplicationController


    # def index
    #     render json: SurveyForm.all, status: :ok
    # end

    def show
        surveyForm = SurveyForm.find(params[:id])
        render json: surveyForm, status: :ok
    end

    def create
        surveyForm = SurveyForm.create!(surveyForm_params)
        render json: surveyForm, status: :created
    end

    private
    def surveyForm_params
        params.permit(:name, :feeling_check, :learned_today, :feedback)
    end

end
