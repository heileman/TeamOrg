require 'spec_helper'

describe "teams/edit.html.erb" do
  before(:each) do
    @team = assign(:team, stub_model(Team,
      :new_record? => false,
      :name => "MyString",
      :organization_id => 1,
      :current_roster => 1
    ))
  end

  it "renders the edit team form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => team_path(@team), :method => "post" do
      assert_select "input#team_name", :name => "team[name]"
      assert_select "input#team_organization_id", :name => "team[organization_id]"
      assert_select "input#team_current_roster", :name => "team[current_roster]"
    end
  end
end
