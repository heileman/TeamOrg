require 'spec_helper'

describe "athletes_rosters/edit.html.erb" do
  before(:each) do
    @athletes_roster = assign(:athletes_roster, stub_model(AthletesRoster,
      :new_record? => false,
      :athlete_id => 1,
      :roster_id => 1,
      :jersey_number => 1
    ))
  end

  it "renders the edit athletes_roster form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => athletes_roster_path(@athletes_roster), :method => "post" do
      assert_select "input#athletes_roster_athlete_id", :name => "athletes_roster[athlete_id]"
      assert_select "input#athletes_roster_roster_id", :name => "athletes_roster[roster_id]"
      assert_select "input#athletes_roster_jersey_number", :name => "athletes_roster[jersey_number]"
    end
  end
end
