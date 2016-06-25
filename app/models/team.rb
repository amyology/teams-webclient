class Team

  attr_accessor :name, :creature, :state, :sport

  def initialize(options)
    @name = options["name"]
    @creature = options["creature"]
    @state = options["state"]
    @sport = options["sport"]
  end

  def self.all
    api = Unirest.get("http://localhost:3000/api/teams.json").body
    teams = []
    api.each do |team|
      teams << Team.new(team)
    end
    teams
  end

  def self.find(api_id)
    Team.new(Unirest.get("http://localhost:3000/api/teams/#{api_id}.json").body)
  end

end