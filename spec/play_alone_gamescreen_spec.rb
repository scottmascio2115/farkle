require 'spec_helper.rb' # It will load the configuration you set in spec_helper.rb

describe 'skizzle app play alone' do
  before(:each) do
    visit('/')
    click_link("Play Alone")
    fill_in 'player1_name', :with => 'Scott'
    click_button("Let's Play")
  end

  it "should let you start a game with a score of zero" do

    page.should have_content("Total Score: 0")
  end

  it "should welcome the player with the correct name" do

    page.should have_content("Scott lets play some Skizzle!")
  end

  it "should let you save the game score and end the game" do

    page.should have_link("Save Scores & End Game")
  end

end
