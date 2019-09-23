class PropSerializer < ActiveModel::Serializer
  attributes :id, :title, :date, :start_time,
             :sport, :home_team, :away_team, :espn_game_identifier,
             :locked, :home_team_won, :away_team_won, :scored_by_admin,  
             :board_id, :created_at, :updated_at  
end