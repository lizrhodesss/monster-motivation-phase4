class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password, :email, :cohort_id
end
