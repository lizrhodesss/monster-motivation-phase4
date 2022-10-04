class SurveyForm < ApplicationRecord
    has_many :users
    has_many :cohorts, through: :users
end
