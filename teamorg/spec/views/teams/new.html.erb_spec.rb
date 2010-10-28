require 'spec_helper'

describe "teams/new.html.erb" do
  before(:each) do
    assign(:team, stub_model(Team,
      :name => "MyString",
      :organization_id => 1,
      :current_roster => 1
    ).as_new_record)
  end

  it "renders new team form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => teams_path, :method => "post" do
      assert_select "input#team_name", :name => "team[name]"
      assert_select "input#team_organization_id", :name => "team[organization_id]"
      assert_select "input#team_current_roster", :name => "team[current_roster]"
    end
  end
end
