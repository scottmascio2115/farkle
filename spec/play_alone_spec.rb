require 'spec_helper.rb' # It will load the configuration you set in spec_helper.rb

describe 'skizzle app play alone' do
  before(:each) do
    visit('/')
    click_link("Play Alone")
  end

  it "should load the one player page" do # the first test

    page.should have_content("One Player Skizzle")
  end

  it "should have a leaderboard button on the play aloe page page" do # the first test

    page.should have_button("opener")
  end

  it "should show leaders when leaderboard button is clicked on the play alone page" do # the first test

    click_button('opener')
    page.should have_content("All Time Leaderboard")
  end

  it "should let you start a game from the play alone page" do
    fill_in 'player1_name', :with => 'Scott'
    click_button("Let's Play")
    page.should have_content("Scott its your roll")
  end

  it "should let you start a game with a score of zero" do
    fill_in 'player1_name', :with => 'Scott'
    click_button("Let's Play")
    page.should have_content("Total Score: 0")
  end
end
