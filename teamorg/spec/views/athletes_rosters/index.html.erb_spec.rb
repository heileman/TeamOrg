require 'spec_helper'

describe "athletes_rosters/index.html.erb" do
  before(:each) do
    assign(:athletes_rosters, [
      stub_model(AthletesRoster,
        :athlete_id => 1,
        :roster_id => 1,
        :jersey_number => 1
      ),
      stub_model(AthletesRoster,
        :athlete_id => 1,
        :roster_id => 1,
        :jersey_number => 1
      )
    ])
  end

  it "renders a list of athletes_rosters" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
