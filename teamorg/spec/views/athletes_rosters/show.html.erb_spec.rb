require 'spec_helper'

describe "athletes_rosters/show.html.erb" do
  before(:each) do
    @athletes_roster = assign(:athletes_roster, stub_model(AthletesRoster,
      :athlete_id => 1,
      :roster_id => 1,
      :jersey_number => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
