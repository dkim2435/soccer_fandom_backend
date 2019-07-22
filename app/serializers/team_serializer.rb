class TeamSerializer < ActiveModel::Serializer
  attributes :id, :teamname, :clubcolors, :venue, :image
end
