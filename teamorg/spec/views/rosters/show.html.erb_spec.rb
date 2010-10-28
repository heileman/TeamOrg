require 'spec_helper'

describe "rosters/show.html.erb" do
  before(:each) do
    @roster = assign(:roster, stub_model(Roster,
      :name => "Name",
      :team_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
