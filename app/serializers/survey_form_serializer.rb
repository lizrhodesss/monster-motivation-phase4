class SurveyFormSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :name, :feeling_check, :learned_today, :feedback
end
