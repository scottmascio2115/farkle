
require 'spec_helper.rb' # It will load the configuration you set in spec_helper.rb

describe 'skizzle app home page' do
  before(:each) do
    visit('/')
  end
  it "should load the home page" do # the first test

    page.should have_content("Skizzle")
  end

  it "should have linke to play alone the home page" do # the first test

    page.should have_link("Play Alone")
  end

  it "should have linke to play with a friend the home page" do # the first test

    page.should have_link("Play with a Friend")
  end

  it "should load the home page" do # the first test

    page.should have_content("Skizzle")
  end

  it "should have a rules button on the home page" do # the first test

    page.should have_button("opener2")
  end

  it "should show rules when Skizzle Rules button is clicked on the home page" do # the first test

    click_button('opener2')
    page.should have_content("Skizzle Rules")
  end

  it "should have a link to the rules doc when Skizzle Rules button is clicked on the home page" do # the first test

    click_button('opener2')
    page.should have_link("Combinations / Scoring")
  end

  it "should have a leaderboard button on the home page" do # the first test

    page.should have_button("opener")
  end

  it "should show leaders when leaderboard button is clicked on the home page" do # the first test

    click_button('opener')
    page.should have_content("All Time Leaderboard")
  end



end

