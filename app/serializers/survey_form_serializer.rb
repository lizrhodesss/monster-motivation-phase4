class SurveyFormSerializer < ActiveModel::Serializer
  attributes :id, :name, :feeling_check, :learned_today, :feedback
end
