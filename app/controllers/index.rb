get '/' do
  @games = Game.all
  @p = []
  @games.each do |game|
   game.players.each do |player|
    @p << player
    end
   end

   @high_score = @p.sort_by(&:score).reverse.take(10)

  erb :index
end

get '/odds' do

  erb :odds
end

get '/leaderboard' do
  @games = Game.all
  @p = []
  @games.each do |game|
   game.players.each do |player|
    @p << player
    end
   end

   @high_score = @p.sort_by(&:score).reverse.take(10)

  erb :leader_board
end





