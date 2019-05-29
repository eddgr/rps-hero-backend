class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :level, :email
end
