#++++++++++++++++++++++++++Get
get '/oneplayer' do
  @games = Game.all
  @p = []
  @games.each do |game|
   game.players.each do |player|
    @p << player
    end
   end

   @high_score = @p.sort_by(&:score).reverse.take(10)

  erb :one_player
end

get '/game/playerone/:game_id/:player_a' do
  @game = Game.find(params[:game_id])
  @player_a = Player.find(params[:player_a])

  @roll1 = Roll.create
  @roll2 = Roll.create
  @roll3 = Roll.create
  @roll4 = Roll.create
  @roll5 = Roll.create
  @roll6 = Roll.create

  @roll1b = Roll.create
  @roll2b = Roll.create
  @roll3b = Roll.create
  @roll4b = Roll.create
  @roll5b = Roll.create
  @roll6b = Roll.create

  erb :game_playersone
end

get '/game/playersone/:game_id/:player_a' do
  @game = Game.find(params[:game_id])
  @player_a = Player.find(params[:player_a])

  @roll1 = Roll.create
  @roll2 = Roll.create
  @roll3 = Roll.create
  @roll4 = Roll.create
  @roll5 = Roll.create
  @roll6 = Roll.create

  @roll1b = Roll.create
  @roll2b = Roll.create
  @roll3b = Roll.create
  @roll4b = Roll.create
  @roll5b = Roll.create
  @roll6b = Roll.create

  erb :game_playersone
end

get '/results/:id' do
  @game = Game.find(params[:id])
  @player_a = @game.players.first
  @player_b = @game.players.last

  erb :results
end

get '/skizzle/playerone/6/:roll1/:roll2/:roll3/:roll4/:roll5/:roll6/:player/:game/:message' do
  @game = Game.find(params[:game])
  @message = params[:message]
  @player = Player.find(params[:player])
  @roll1 = params[:roll1]
  @roll2 = params[:roll2]
  @roll3 = params[:roll3]
  @roll4 = params[:roll4]
  @roll5 = params[:roll5]
  @roll6 = params[:roll6]
  @player_a = @game.players.first
  @player_b = @game.players.last
  if @player.id == @player_a.id
    @player_a.active = "false"
    @player_a.save
    @player_b.active = "true"
    @player_b.save
  else @player.id == @player_b.id
    @player_b.active = "false"
    @player_b.save
    @player_a.active = "true"
    @player_a.save
  end

  erb :skizzle_6_oneplayer
end

get '/skizzle/playerone/5/:roll1/:roll2/:roll3/:roll4/:roll5/:player/:game/:message' do
  @game = Game.find(params[:game])
  @message = params[:message]
  @player = Player.find(params[:player])
  @roll1 = params[:roll1]
  @roll2 = params[:roll2]
  @roll3 = params[:roll3]
  @roll4 = params[:roll4]
  @roll5 = params[:roll5]

  @player_a = @game.players.first
  @player_b = @game.players.last
  if @player.id == @player_a.id
    @player_a.active = "false"
    @player_a.save
    @player_b.active = "true"
    @player_b.save
  else @player.id == @player_b.id
    @player_b.active = "false"
    @player_b.save
    @player_a.active = "true"
    @player_a.save
  end

  erb :skizzle_5_oneplayer
end

get '/skizzle/playerone/4/:roll1/:roll2/:roll3/:roll4/:player/:game/:message' do
  @game = Game.find(params[:game])
  @message = params[:message]
  @player = Player.find(params[:player])
  @roll1 = params[:roll1]
  @roll2 = params[:roll2]
  @roll3 = params[:roll3]
  @roll4 = params[:roll4]

  @player_a = @game.players.first
  @player_b = @game.players.last
  if @player.id == @player_a.id
    @player_a.active = "false"
    @player_a.save
    @player_b.active = "true"
    @player_b.save
  else @player.id == @player_b.id
    @player_b.active = "false"
    @player_b.save
    @player_a.active = "true"
    @player_a.save
  end

  erb :skizzle_4_oneplayer
end

get '/skizzle/playerone/3/:roll1/:roll2/:roll3/:player/:game/:message' do
  @game = Game.find(params[:game])
  @message = params[:message]
  @player = Player.find(params[:player])
  @roll1 = params[:roll1]
  @roll2 = params[:roll2]
  @roll3 = params[:roll3]

  @player_a = @game.players.first
  @player_b = @game.players.last
  if @player.id == @player_a.id
    @player_a.active = "false"
    @player_a.save
    @player_b.active = "true"
    @player_b.save
  else @player.id == @player_b.id
    @player_b.active = "false"
    @player_b.save
    @player_a.active = "true"
    @player_a.save
  end

  erb :skizzle_3_oneplayer
end

get '/skizzle/playerone/2/:roll1/:roll2/:player/:game/:message' do
  @game = Game.find(params[:game])
  @message = params[:message]
  @player = Player.find(params[:player])
  @roll1 = params[:roll1]
  @roll2 = params[:roll2]

  @player_a = @game.players.first
  @player_b = @game.players.last
  if @player.id == @player_a.id
    @player_a.active = "false"
    @player_a.save
    @player_b.active = "true"
    @player_b.save
  else @player.id == @player_b.id
    @player_b.active = "false"
    @player_b.save
    @player_a.active = "true"
    @player_a.save
  end

  erb :skizzle_2_oneplayer
end

get '/skizzle/playerone/1/:roll1/:player/:game/:message' do
  @game = Game.find(params[:game])
  @message = params[:message]
  @player = Player.find(params[:player])
  @roll1 = params[:roll1]

  @player_a = @game.players.first
  @player_b = @game.players.last
  if @player.id == @player_a.id
    @player_a.active = "false"
    @player_a.save
    @player_b.active = "true"
    @player_b.save
  else @player.id == @player_b.id
    @player_b.active = "false"
    @player_b.save
    @player_a.active = "true"
    @player_a.save
  end

  erb :skizzle_1_oneplayer
end

get '/skizzilingdice/playerone/:game/:player/:message' do
  @game = Game.find(params[:game])
  @player = Player.find(params[:player])
  @message = params[:message]
  @player.score += 1000
  @player.save

  erb :skizziling_dice_oneplayer
end

get '/game/playerone/:game_id/roll/:player' do
  @roll1 = Roll.create
  @roll2 = Roll.create
  @roll3 = Roll.create
  @roll4 = Roll.create
  @roll5 = Roll.create
  @roll6 = Roll.create
  @game = Game.find(params[:game_id])
  @player = Player.find(params[:player])
  @die = []
  @die << @roll1.value
  @die << @roll2.value
  @die << @roll3.value
  @die << @roll4.value
  @die << @roll5.value
  @die << @roll6.value
  @dice_left = 0
  @roll_score = 0
  @message = ""

    if @die.sort.join("") =~/^123456$/
      @roll_score = 11500
      @message = "a straight"
      @dice_left = 6
      @player.score += @roll_score.to_i
      @player.save
      redirect to ("/skizzilingdice/playerone/#{@game.id}/#{@player.id}/#{@message}")
    elsif @die.sort.join("") =~/1{6}|2{6}|3{6}|4{6}|5{6}|6{6}/
      @roll_score = 12500
      @message = "six of a kind"
      @dice_left = 6
      @player.score += @roll_score.to_i
      @player.save
      redirect to ("/skizzilingdice/playerone/#{@game.id}/#{@player.id}/#{@message}")
    elsif @die.sort.join("") =~/1{5}|2{5}|3{5}|4{5}|5{5}|6{5}/
      @roll_score = 7000
      @message = "five of a kind"
      @dice_left = 1
    elsif @die.sort.join("") =~/1{4}|2{4}|3{4}|4{4}|5{4}|6{4}/
      @roll_score = 3000
      @message = "four of a kind"
      @dice_left = 2
    elsif @die.sort.join("") =~/(1{3})(2{3})|(1{3})(3{3})|(1{3})(4{3})|(1{3})(5{3})|(1{3})(6{3})|(2{3})(3{3})|(2{3})(4{3})|(2{3})(5{3})|(2{3})(6{3})|(3{3})(4{3})|(3{3})(5{3})|(3{3})(6{3})|(4{3})(5{3})|(4{3})(6{3})|(5{3})(6{3})/
      @roll_score = 10000
      @message = "trips twice"
      @dice_left = 6
      @player.score += @roll_score.to_i
      @player.save
      redirect to ("/skizzilingdice/playerone/#{@game.id}/#{@player.id}/#{@message}")
    elsif @die.sort.join("") =~/(1{4})(2{2})|(1{4})(3{2})|(1{4})(4{2})|(1{4})(5{2})|(1{4})(6{2})|(2{4})(3{2})|(2{4})(4{2})|(2{4})(5{2})|(2{4})(6{2})|(3{4})(4{2})|(3{4})(5{2})|(3{4})(6{2})|(4{4})(5{2})|(4{4})(6{2})|(5{4})(6{2})/
      @roll_score = 7500
      @message = "a really really full house"
      @dice_left = 6
      @player.score += @roll_score.to_i
      @player.save
      redirect to ("/skizzilingdice/playerone/#{@game.id}/#{@player.id}/#{@message}")
    elsif @die.count(6) == 3 && @die.sort.join("") =~/1{2}|2{2}|3{2}|4{2}|5{2}/
      @roll_score = 1800
      @message = "a six high full house"
      @dice_left = 1
    elsif @die.count(5) == 3 && @die.sort.join("") =~/1{2}|2{2}|3{2}|4{2}|6{2}/
      @roll_score = 1700
      @message = "a five high full house"
      @dice_left = 1
    elsif @die.count(4) == 3 && @die.sort.join("") =~/1{2}|2{2}|3{2}|5{2}|6{2}/
      @roll_score = 1600
      @message = "a four high full house"
      @dice_left = 1
    elsif @die.count(3) == 3 && @die.sort.join("") =~/1{2}|2{2}|4{2}|5{2}|6{2}/
      @roll_score = 1500
      @message = "a three high full house"
      @dice_left = 1
    elsif @die.count(2) == 3 && @die.sort.join("") =~/1{2}|3{2}|4{2}|5{2}|6{2}/
      @roll_score = 1450
      @message = "a two high full house"
      @dice_left = 1
    elsif @die.count(1) == 3 && @die.sort.join("") =~/5{2}|2{2}|3{2}|4{2}|6{2}/
      @roll_score = 1400
      @message = "a one high full house"
      @dice_left = 1
    elsif @die.sort.join("") =~/(1{2})(2{2})|(1{2}.*)(2{2})|(1{2})(3{2})|(1{2}.*)(3{2})|(1{2})(4{2})|(1{2}.*)(4{2})|(1{2})(5{2})|(1{2}.*)(5{2})|(1{2})(6{2})|(1{2}.*)(6{2})|(2{2})(3{2})|(2{2}.*)(3{2})|(2{2})(4{2})|(2{2}.*)(4{2})|(2{2})(5{2})|(2{2}.*)(5{2})|(2{2})(6{2})|(2{2}.*)(6{2})|(3{2})(4{2})|(3{2})(5{2})|(3{2}.*)(5{2})|(3{2})(6{2})|(3{2}.*)(6{2})|(4{2})(5{2})|(4{2})(6{2})|(4{2}.*)(6{2})|(5{2})(6{2})/
      @roll_score = 1350
      @message = "two pair"
      @dice_left = 2
    elsif @die.count(6) == 3
      @roll_score = 300
      @message = "a three of a kind sixes"
      @dice_left = 3
    elsif @die.count(5) == 3
      @roll_score = 250
      @message = "a three of a kind fives"
      @dice_left = 3
    elsif @die.count(4) == 3
      @roll_score = 200
      @message = "a three of a kind fours"
      @dice_left = 3
    elsif @die.count(3) == 3
      @roll_score = 175
      @message = "a three of a kind threes"
      @dice_left = 3
    elsif @die.count(2) == 3
      @roll_score = 150
      @message = "a three of a kind twos"
      @dice_left = 3
    elsif @die.count(1) == 3
      @roll_score = 1000
      @message = "a three of a kind ones"
      @dice_left = 3
    elsif @die.count(1) == 1
      @roll_score = 1
      @message = "a one"
      @dice_left = 5
    else
      @roll_score = 0
      @message = "You rolled a #{@roll1.value}, #{@roll2.value}, #{@roll3.value}, #{@roll4.value}, #{@roll5.value}, #{@roll6.value}"
      @dice_left = "Zero dice you forfeit your score"
      @player.score = 0
      @player.save
      redirect to ("/skizzle/playerone/6/#{@roll1.value}/#{@roll2.value}/#{@roll3.value}/#{@roll4.value}/#{@roll5.value}/#{@roll6.value}/#{@player.id}/#{@game.id}/#{@message}")
    end

  erb :six_die_oneplayer
end

get '/game/playerone/onedie/:game/:player/:dice_left' do
  @game = Game.find(params[:game])
  @player = Player.find(params[:player])
  @dice_left = params[:dice_left]
  @roll1 = Roll.create
  @die = []
  @die << @roll1.value

  if @die.count(1) == 1
    @roll_score = 20000
    @message = "a one"
    @dice_left = 6
    @player.score += @roll_score.to_i
    @player.save
    redirect to ("/skizzilingdice/playerone/#{@game.id}/#{@player.id}/#{@message}")
  else
    @roll_score = 0
    @message = "You rolled a #{@roll1.value}"
    @player.score = 0
    @player.save
    redirect to ("/skizzle/playerone/1/#{@roll1.value}/#{@player.id}/#{@game.id}/#{@message}")
  end

  erb :one_die_oneplayer
end

get '/game/playerone/twodie/:game/:player/:dice_left' do
  @game = Game.find(params[:game])
  @player = Player.find(params[:player])
  @dice_left = params[:dice_left]
  @roll1 = Roll.create
  @roll2 = Roll.create
  @die = []
  @die << @roll1.value
  @die << @roll2.value

  if @die.count(1) == 2
    @roll_score = 13500
    @message = "a pair of ones"
    @dice_left = 6
    @player.score += @roll_score.to_i
    @player.save
    redirect to ("/skizzilingdice/playerone/#{@game.id}/#{@player.id}/#{@message}")
  elsif @die.count(2) == 2
    @roll_score = 12000
    @message = "a pair of twos"
    @dice_left = 6
    @player.score += @roll_score.to_i
    @player.save
    redirect to ("/skizzilingdice/playerone/#{@game.id}/#{@player.id}/#{@message}")
  elsif @die.count(3) == 2
    @roll_score = 10500
    @message = "a pair of threes"
    @dice_left = 6
    @player.score += @roll_score.to_i
    @player.save
    redirect to ("/skizzilingdice/playerone/#{@game.id}/#{@player.id}/#{@message}")
  elsif @die.count(4) == 2
    @roll_score = 9000
    @message = "a pair of fours"
    @dice_left = 6
    @player.score += @roll_score.to_i
    @player.save
    redirect to ("/skizzilingdice/playerone/#{@game.id}/#{@player.id}/#{@message}")
  elsif @die.count(5) == 2
    @roll_score = 8000
    @message = "a pair of fives"
    @dice_left = 6
    @player.score += @roll_score.to_i
    @player.save
    redirect to ("/skizzilingdice/playerone/#{@game.id}/#{@player.id}/#{@message}")
  elsif @die.count(6) == 2
    @roll_score = 7000
    @message = "a pair of sixes"
    @dice_left = 6
    @player.score += @roll_score.to_i
    @player.save
    redirect to ("/skizzilingdice/playerone/#{@game.id}/#{@player.id}/#{@message}")
  else
    @roll_score = 0
    @message = "You rolled a #{@roll1.value}, #{@roll2.value}"
    @dice_left = "Zero dice you forfeit your score"
    @player.score = 0
    @player.save
    redirect to ("/skizzle/playerone/2/#{@roll1.value}/#{@roll2.value}/#{@player.id}/#{@game.id}/#{@message}")
  end

  erb :two_die_oneplayer
end

get '/game/playerone/threedie/:game/:player/:dice_left' do
  @game = Game.find(params[:game])
  @player = Player.find(params[:player])
  @dice_left = params[:dice_left]
  @roll1 = Roll.create
  @roll2 = Roll.create
  @roll3 = Roll.create
  @die = []
  @die << @roll1.value
  @die << @roll2.value
  @die << @roll3.value

  if @die.count(1) == 3
    @roll_score = 8000
    @message = "trip ones"
    @dice_left = 6
    @player.score += @roll_score.to_i
    @player.save
    redirect to ("/skizzilingdice/playerone/#{@game.id}/#{@player.id}/#{@message}")
  elsif @die.count(2) == 3
    @roll_score = 7000
    @message = "trip twos"
    @dice_left = 6
    @player.score += @roll_score.to_i
    @player.save
    redirect to ("/skizzilingdice/playerone/#{@game.id}/#{@player.id}/#{@message}")
  elsif @die.count(3) == 3
    @roll_score = 6000
    @message = "trip threes"
    @dice_left = 6
    @player.score += @roll_score.to_i
    @player.save
    redirect to ("/skizzilingdice/playerone/#{@game.id}/#{@player.id}/#{@message}")
  elsif @die.count(4) == 3
    @roll_score = 5000
    @message = "trip fours"
    @dice_left = 6
    @player.score += @roll_score.to_i
    @player.save
    redirect to ("/skizzilingdice/playerone/#{@game.id}/#{@player.id}/#{@message}")
  elsif @die.count(5) == 3
    @roll_score = 4000
    @message = "trip fives"
    @dice_left = 6
    @player.score += @roll_score.to_i
    @player.save
    redirect to ("/skizzilingdice/playerone/#{@game.id}/#{@player.id}/#{@message}")
  elsif @die.count(6) == 3
    @roll_score = 3000
    @message = "trip sixes"
    @dice_left = 6
    @player.score += @roll_score.to_i
    @player.save
    redirect to ("/skizzilingdice/playerone/#{@game.id}/#{@player.id}/#{@message}")
  elsif @die.sort.join("") =~/^123$/
    @roll_score = 2000
    @message = "a straight one, two, three"
    @dice_left = 6
    @player.score += @roll_score.to_i
    @player.save
    redirect to ("/skizzilingdice/playerone/#{@game.id}/#{@player.id}/#{@message}")
  elsif @die.sort.join("") =~/^234$/
    @roll_score = 2000
    @message = "a straight two, three, four"
    @dice_left = 6
    @player.score += @roll_score.to_i
    @player.save
    redirect to ("/skizzilingdice/playerone/#{@game.id}/#{@player.id}/#{@message}")
  elsif @die.sort.join("") =~/^345$/
    @roll_score = 2000
    @message = "a straight three, four, five"
    @dice_left = 6
    @player.score += @roll_score.to_i
    @player.save
    redirect to ("/skizzilingdice/playerone/#{@game.id}/#{@player.id}/#{@message}")
  elsif @die.sort.join("") =~/^456$/
    @roll_score = 2000
    @message = "a straight four, five, six"
    @dice_left = 6
    @player.score += @roll_score.to_i
    @player.save
    redirect to ("/skizzilingdice/playerone/#{@game.id}/#{@player.id}/#{@message}")
  elsif @die.count(6) == 2
    @roll_score = 500
    @message = "a pair of sixes"
    @dice_left = 1
  elsif @die.count(5) == 2
    @roll_score = 500
    @message = "a pair of fives"
    @dice_left = 1
  elsif @die.count(4) == 2
    @roll_score = 500
    @message = "a pair of fours"
    @dice_left = 1
  elsif @die.count(3) == 2
    @roll_score = 500
    @message = "a pair of threes"
    @dice_left = 1
  elsif @die.count(2) == 2
    @roll_score = 500
    @message = "a pair of twos"
    @dice_left = 1
  elsif @die.count(1) == 2
    @roll_score = 500
    @message = "a pair of ones"
    @dice_left = 1
  else
    @roll_score = 0
    @message = "You rolled a #{@roll1.value}, #{@roll2.value}, #{@roll3.value}"
    @dice_left = "Zero dice you forfeit your score"
    @player.score = 0
    @player.save
    redirect to ("/skizzle/playerone/3/#{@roll1.value}/#{@roll2.value}/#{@roll3.value}/#{@player.id}/#{@game.id}/#{@message}")
  end

  erb :three_die_oneplayer
end

get '/game/playerone/fourdie/:game/:player/:dice_left' do
  @game = Game.find(params[:game])
  @player = Player.find(params[:player])
  @dice_left = params[:dice_left]
  @roll1 = Roll.create
  @roll2 = Roll.create
  @roll3 = Roll.create
  @roll4 = Roll.create
  @die = []
  @die << @roll1.value
  @die << @roll2.value
  @die << @roll3.value
  @die << @roll4.value

  if @die.sort.join("") =~/1{4}|2{4}|3{4}|4{4}|5{4}|6{4}/
    @roll_score = 15000
    @message = "four of a kind"
    @dice_left = 6
    @player.score += @roll_score.to_i
    @player.save
    redirect to ("/skizzilingdice/playerone/#{@game.id}/#{@player.id}/#{@message}")
  elsif @die.sort.join("") =~/(1{2})(2{2})|(1{2}.*)(2{2})|(1{2})(3{2})|(1{2}.*)(3{2})|(1{2})(4{2})|(1{2}.*)(4{2})|(1{2})(5{2})|(1{2}.*)(5{2})|(1{2})(6{2})|(1{2}.*)(6{2})|(2{2})(3{2})|(2{2}.*)(3{2})|(2{2})(4{2})|(2{2}.*)(4{2})|(2{2})(5{2})|(2{2}.*)(5{2})|(2{2})(6{2})|(2{2}.*)(6{2})|(3{2})(4{2})|(3{2})(5{2})|(3{2}.*)(5{2})|(3{2})(6{2})|(3{2}.*)(6{2})|(4{2})(5{2})|(4{2})(6{2})|(4{2}.*)(6{2})|(5{2})(6{2})/
    @roll_score = 10000
    @message = "two pair"
    @dice_left = 6
    @player.score += @roll_score.to_i
    @player.save
    redirect to ("/skizzilingdice/playerone/#{@game.id}/#{@player.id}/#{@message}")
  elsif @die.sort.join("") =~/^1234$/
    @roll_score = 9500
    @message = "a straight one, two, three, four"
    @dice_left = 6
    @player.score += @roll_score.to_i
    @player.save
    redirect to ("/skizzilingdice/playerone/#{@game.id}/#{@player.id}/#{@message}")
  elsif @die.sort.join("") =~/^2345$/
    @roll_score = 9500
    @message = "a straight two, three, four, five"
    @dice_left = 6
    @player.score += @roll_score.to_i
    @player.save
    redirect to ("/skizzilingdice/playerone/#{@game.id}/#{@player.id}/#{@message}")
  elsif @die.sort.join("") =~/^3456$/
    @roll_score = 9500
    @message = "a straight three, four, five, six"
    @dice_left = 6
    @player.score += @roll_score.to_i
    @player.save
    redirect to ("/skizzilingdice/playerone/#{@game.id}/#{@player.id}/#{@message}")
  elsif @die.count(6) == 3
    @roll_score = 5000
    @message = "a three of a kind sixes"
    @dice_left = 1
  elsif @die.count(5) == 3
    @roll_score = 3750
    @message = "a three of a kind fives"
    @dice_left = 1
  elsif @die.count(4) == 3
    @roll_score = 2500
    @message = "a three of a kind fours"
    @dice_left = 1
  elsif @die.count(3) == 3
    @roll_score = 2500
    @message = "a three of a kind threes"
    @dice_left = 1
  elsif @die.count(2) == 3
    @roll_score = 2000
    @message = "a three of a kind twos"
    @dice_left = 1
  elsif @die.count(1) == 3
    @roll_score = 5000
    @message = "a three of a kind ones"
    @dice_left = 1
  elsif @die.count(6) == 2
    @roll_score = 300
    @message = "a pair of sixes"
    @dice_left = 2
  elsif @die.count(5) == 2
    @roll_score = 300
    @message = "a pair of fives"
    @dice_left = 2
  elsif @die.count(4) == 2
    @roll_score = 300
    @message = "a pair of fours"
    @dice_left = 2
  elsif @die.count(3) == 2
    @roll_score = 300
    @message = "a pair of threes"
    @dice_left = 2
  elsif @die.count(2) == 2
    @roll_score = 300
    @message = "a pair of twos"
    @dice_left = 2
  elsif @die.count(1) == 2
    @roll_score = 300
    @message = "a pair of ones"
    @dice_left = 2
  else
    @roll_score = 0
    @message = "You rolled a #{@roll1.value}, #{@roll2.value}, #{@roll3.value}, #{@roll4.value}"
    @dice_left = "Zero dice you forfeit your score"
    @player.score = 0
    @player.save
    redirect to ("/skizzle/playerone/4/#{@roll1.value}/#{@roll2.value}/#{@roll3.value}/#{@roll4.value}/#{@player.id}/#{@game.id}/#{@message}")
  end

  erb :four_die_oneplayer
end

get '/game/playerone/fivedie/:game/:player/:dice_left' do
  @game = Game.find(params[:game])
  @player = Player.find(params[:player])
  @dice_left = params[:dice_left]
  @roll1 = Roll.create
  @roll2 = Roll.create
  @roll3 = Roll.create
  @roll4 = Roll.create
  @roll5 = Roll.create
  @die = []
  @die << @roll1.value
  @die << @roll2.value
  @die << @roll3.value
  @die << @roll4.value
  @die << @roll5.value

  if @die.sort.join("") =~/1{5}|2{5}|3{5}|4{5}|5{5}|6{5}/
    @roll_score = 9500
    @message = "five of a kind"
    @dice_left = 6
    @player.score += @roll_score.to_i
    @player.save
    redirect to ("/skizzilingdice/playerone/#{@game.id}/#{@player.id}/#{@message}")
  elsif @die.count(6) == 3 && @die.sort.join("") =~/1{2}|2{2}|3{2}|4{2}|5{2}/
    @roll_score = 3000
    @message = "a six high full house"
    @dice_left = 6
    @player.score += @roll_score.to_i
    @player.save
    redirect to ("/skizzilingdice/playerone/#{@game.id}/#{@player.id}/#{@message}")
  elsif @die.count(5) == 3 && @die.sort.join("") =~/1{2}|2{2}|3{2}|4{2}|6{2}/
    @roll_score = 2500
    @message = "a five high full house"
    @dice_left = 6
    @player.score += @roll_score.to_i
    @player.save
    redirect to ("/skizzilingdice/playerone/#{@game.id}/#{@player.id}/#{@message}")
  elsif @die.count(4) == 3 && @die.sort.join("") =~/1{2}|2{2}|3{2}|5{2}|6{2}/
    @roll_score = 2500
    @message = "a four high full house"
    @dice_left = 6
    @player.score += @roll_score.to_i
    @player.save
    redirect to ("/skizzilingdice/playerone/#{@game.id}/#{@player.id}/#{@message}")
  elsif @die.count(3) == 3 && @die.sort.join("") =~/1{2}|2{2}|4{2}|5{2}|6{2}/
    @roll_score = 1700
    @message = "a three high full house"
    @dice_left = 6
    @player.score += @roll_score.to_i
    @player.save
    redirect to ("/skizzilingdice/playerone/#{@game.id}/#{@player.id}/#{@message}")
  elsif @die.count(2) == 3 && @die.sort.join("") =~/1{2}|3{2}|4{2}|5{2}|6{2}/
    @roll_score = 1650
    @message = "a two high full house"
    @dice_left = 6
    @player.score += @roll_score.to_i
    @player.save
    redirect to ("/skizzilingdice/playerone/#{@game.id}/#{@player.id}/#{@message}")
  elsif @die.count(1) == 3 && @die.sort.join("") =~/5{2}|2{2}|3{2}|4{2}|6{2}/
    @roll_score = 1500
    @message = "a one high full house"
    @dice_left = 6
    @player.score += @roll_score.to_i
    @player.save
    redirect to ("/skizzilingdice/playerone/#{@game.id}/#{@player.id}/#{@message}")
  elsif @die.sort.join("") =~/1{4}|2{4}|3{4}|4{4}|5{4}|6{4}/
    @roll_score = 7500
    @message = "four of a kind"
    @dice_left = 1
  elsif @die.sort.join("") =~/(1{2})(2{2})|(1{2}.*)(2{2})|(1{2})(3{2})|(1{2}.*)(3{2})|(1{2})(4{2})|(1{2}.*)(4{2})|(1{2})(5{2})|(1{2}.*)(5{2})|(1{2})(6{2})|(1{2}.*)(6{2})|(2{2})(3{2})|(2{2}.*)(3{2})|(2{2})(4{2})|(2{2}.*)(4{2})|(2{2})(5{2})|(2{2}.*)(5{2})|(2{2})(6{2})|(2{2}.*)(6{2})|(3{2})(4{2})|(3{2})(5{2})|(3{2}.*)(5{2})|(3{2})(6{2})|(3{2}.*)(6{2})|(4{2})(5{2})|(4{2})(6{2})|(4{2}.*)(6{2})|(5{2})(6{2})/
    @roll_score = 1000
    @message = "two pair"
    @dice_left = 1
  elsif @die.count(6) == 3
    @roll_score = 900
    @message = "a three of a kind sixes"
    @dice_left = 2
  elsif @die.count(5) == 3
    @roll_score = 850
    @message = "a three of a kind fives"
    @dice_left = 2
  elsif @die.count(4) == 3
    @roll_score = 700
    @message = "a three of a kind fours"
    @dice_left = 2
  elsif @die.count(3) == 3
    @roll_score = 575
    @message = "a three of a kind threes"
    @dice_left = 2
  elsif @die.count(2) == 3
    @roll_score = 450
    @message = "a three of a kind twos"
    @dice_left = 2
  elsif @die.count(1) == 3
    @roll_score = 2000
    @message = "a three of a kind ones"
    @dice_left = 2
  elsif @die.count(6) == 2
    @roll_score = 100
    @message = "a pair of sixes"
    @dice_left = 3
  elsif @die.count(5) == 2
    @roll_score = 100
    @message = "a pair of fives"
    @dice_left = 3
  elsif @die.count(4) == 2
    @roll_score = 100
    @message = "a pair of fours"
    @dice_left = 3
  elsif @die.count(3) == 2
    @roll_score = 100
    @message = "a pair of threes"
    @dice_left = 3
  elsif @die.count(2) == 2
    @roll_score = 100
    @message = "a pair of twos"
    @dice_left = 3
  elsif @die.count(1) == 2
    @roll_score = 1000
    @message = "a pair of ones"
    @dice_left = 3
  else
    @roll_score = 0
    @message = "You rolled a #{@roll1.value}, #{@roll2.value}, #{@roll3.value}, #{@roll4.value}, #{@roll5.value}"
    @dice_left = "Zero dice you forfeit your score"
    @player.score = 0
    @player.save
    redirect to ("/skizzle/playerone/5/#{@roll1.value}/#{@roll2.value}/#{@roll3.value}/#{@roll4.value}/#{@roll5.value}/#{@player.id}/#{@game.id}/#{@message}")
  end

  erb :five_die_oneplayer
end

get '/game/playerone/nextroll/:game/:player/:dice_left' do
  @game = Game.find(params[:game])
  @player = Player.find(params[:player])
  @dice_left = params[:dice_left]

  if @dice_left == '1'

    redirect to ("/game/playerone/onedie/#{@game.id}/#{@player.id}/#{@dice_left}")
  elsif @dice_left == '2'

    redirect to ("/game/playerone/twodie/#{@game.id}/#{@player.id}/#{@dice_left}")
  elsif @dice_left == '3'

    redirect to ("/game/playerone/threedie/#{@game.id}/#{@player.id}/#{@dice_left}")
  elsif @dice_left == '4'

    redirect to ("/game/playerone/fourdie/#{@game.id}/#{@player.id}/#{@dice_left}")
  elsif @dice_left == '5'

    redirect to ("/game/playerone/fivedie/#{@game.id}/#{@player.id}/#{@dice_left}")
  else
    redirect to ('/game/playerone/#{@game.id}/roll/#{@player.id}')
  end
end


#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++post


post '/creategame/playersone' do
  player_1 = params[:player1_name]
  @game = Game.create
  @player_a = Player.create(name: player_1)
  @game.players << @player_a

  @player_a.active = "true"
  @player_a.save
  redirect to ("/game/playersone/#{@game.id}/#{@player_a.id}")
end

post '/game/playersone/:game_a/:player_a/rolls/1/:player' do
  @player_a = Player.find(params[:player_a])
  @game = Game.find(params[:game_a])
  @roll1 = Roll.create
  @roll2 = Roll.create
  @roll3 = Roll.create
  @roll4 = Roll.create
  @roll5 = Roll.create
  @roll6 = Roll.create

  redirect to ("/game/playerone/#{@game.id}/roll/#{@player_a.id}")
end


post '/submit/playersone/:game/:player/:dice_left/:roll_score' do
  @game = Game.find(params[:game])
  @player = Player.find(params[:player])
  @dice_left = params[:dice_left]
  @roll_score = params[:roll_score]
  @player_a = @game.players.first
  @player_b = @game.players.last

  if params[:answer] == 'yes'
    if @player.id == @player_a.id
      @player_a.active = "false"
      @player_a.save
      @player_b.active = "true"
      @player_b.save
    else @player.id == @player_b.id
      @player_b.active = "false"
      @player_b.save
      @player_a.active = "true"
      @player_a.save
    end
    @player.score += @roll_score.to_i
    @player.save
    redirect to ("/game/playerone/#{@game.id}/#{@player_a.id}")
  elsif params[:answer] == 'finish'
    @player.score += @roll_score.to_i
    @player.active = "false"
    @player.save
    redirect to ("/")
  else params[:answer] == 'no'
    @player.score += @roll_score.to_i
    @player.save
    redirect to ("/game/playerone/nextroll/#{@game.id}/#{@player.id}/#{@dice_left}")
  end
end

post '/creategame/playersone/:id/:player_a' do
  @game = Game.create
  @player_a = Player.find(params[:player_a])
  @game.players << @player_a
  @game.players << @player_b
  @game.save
  redirect to ("/game/playersone/#{@game.id}/#{@player_a.id}")
end













