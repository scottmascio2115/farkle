require 'spec_helper.rb' # It will load the configuration you set in spec_helper.rb

describe 'skizzle app combinations and scores' do
  before(:each) do
    visit('/')
    click_button('opener2')
    click_link("Combinations / Scoring")
  end

  it "should load the combinations and scoring page" do

    page.should have_content("Combinations & Scoring")
  end

  it "should have links to all the dice combinations" do

    page.should have_link("One Die Combinations")
    page.should have_link("Two Dice Combinations")
    page.should have_link("Three Dice Combinations")
    page.should have_link("Four Dice Combinations")
    page.should have_link("Five Dice Combinations")
    page.should have_link("Six Dice Combinations")
  end
end
