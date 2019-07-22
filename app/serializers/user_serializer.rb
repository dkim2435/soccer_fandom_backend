class UserSerializer < ActiveModel::Serializer
  attributes :username, :email, :teams#, :leagues
end
