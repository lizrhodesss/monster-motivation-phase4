class Cohort < ApplicationRecord
    has_many :users
    has_many :survey_forms, through: :users
end
