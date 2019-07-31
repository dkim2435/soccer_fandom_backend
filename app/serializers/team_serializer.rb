class TeamSerializer < ActiveModel::Serializer
  attributes :id, :teamname, :clubcolors, :venue, :image, :founded, :website, :address, :league
end
