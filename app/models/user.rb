class User < ApplicationRecord
    belongs_to :cohort
    belongs_to :survey_form
    # belongs_to :non_tech_resource
    # belongs_to :tech_resource


    # validates :username, :email, :password, :cohort_id, presence: true
    # validates :email, uniqueness: true
end
