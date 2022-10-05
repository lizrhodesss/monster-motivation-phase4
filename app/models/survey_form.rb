class SurveyForm < ApplicationRecord
    has_many :users
    has_many :cohorts, through: :users

    # validates :feelingCheck, :name, :feedback, :learnedToday, presence: true
    # validates :feelingCheck, inclusion: 1..5
end
