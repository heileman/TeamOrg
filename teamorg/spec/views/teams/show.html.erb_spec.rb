require 'spec_helper'

describe "teams/show.html.erb" do
  before(:each) do
    @team = assign(:team, stub_model(Team,
      :name => "Name",
      :organization_id => 1,
      :current_roster => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
