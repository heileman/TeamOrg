require 'spec_helper'

describe "athletes_rosters/new.html.erb" do
  before(:each) do
    assign(:athletes_roster, stub_model(AthletesRoster,
      :athlete_id => 1,
      :roster_id => 1,
      :jersey_number => 1
    ).as_new_record)
  end

  it "renders new athletes_roster form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => athletes_rosters_path, :method => "post" do
      assert_select "input#athletes_roster_athlete_id", :name => "athletes_roster[athlete_id]"
      assert_select "input#athletes_roster_roster_id", :name => "athletes_roster[roster_id]"
      assert_select "input#athletes_roster_jersey_number", :name => "athletes_roster[jersey_number]"
    end
  end
end
