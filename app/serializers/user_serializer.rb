class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password, :email, :cohort_id, :survey_form_id, :non_tech_resources_id, :tech_resources_id
end
