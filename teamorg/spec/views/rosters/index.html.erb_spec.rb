require 'spec_helper'

describe "rosters/index.html.erb" do
  before(:each) do
    assign(:rosters, [
      stub_model(Roster,
        :name => "Name",
        :team_id => 1
      ),
      stub_model(Roster,
        :name => "Name",
        :team_id => 1
      )
    ])
  end

  it "renders a list of rosters" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
