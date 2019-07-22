class LeagueSerializer < ActiveModel::Serializer
    attributes :leaguename, :region, :teams
end
