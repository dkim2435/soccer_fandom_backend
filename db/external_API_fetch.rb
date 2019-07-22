League.destroy_all
Team.destroy_all

# ...

League.create(leaguename: 'EPL', region: 'England')
League.create(leaguename: 'Bundesliga', region: 'Germany')
League.create(leaguename: 'Serie A', region: 'Italy')
League.create(leaguename: 'La Liga', region: 'Spain')

response = RestClient.get('http://api.football-data.org/v2/competitions/2014/teams', headers={'X-Auth-Token': '748afd6010524093bcc07131723f85dc'})
response = JSON.parse(response)

response["teams"].each { |team|
  Team.create(
    teamname: team["name"],
    clubcolors: team["clubColors"],
    venue: team["venue"],
    image: team["crestUrl"],
    league: League.last
  )
}
#? EPL
response = RestClient.get('http://api.football-data.org/v2/competitions/2021/teams', headers={'X-Auth-Token': '748afd6010524093bcc07131723f85dc'})
response = JSON.parse(response)

response["teams"].each { |team|
  Team.create(
    teamname: team["name"],
    clubcolors: team["clubColors"],
    venue: team["venue"],
    image: team["crestUrl"],
    league: League.first
  )
}

#? Bundesliga
response = RestClient.get('http://api.football-data.org/v2/competitions/2002/teams', headers={'X-Auth-Token': '748afd6010524093bcc07131723f85dc'})
response = JSON.parse(response)

response["teams"].each { |team|
  Team.create(
    teamname: team["name"],
    clubcolors: team["clubColors"],
    venue: team["venue"],
    image: team["crestUrl"],
    league: League.second
  )
}

#? Serie A
response = RestClient.get('http://api.football-data.org/v2/competitions/2019/teams', headers={'X-Auth-Token': '748afd6010524093bcc07131723f85dc'})
response = JSON.parse(response)

response["teams"].each { |team|
  Team.create(
    teamname: team["name"],
    clubcolors: team["clubColors"],
    venue: team["venue"],
    image: team["crestUrl"],
    league: League.third
  )
}
