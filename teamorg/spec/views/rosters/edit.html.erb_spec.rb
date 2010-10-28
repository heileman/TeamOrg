require 'spec_helper'

describe "rosters/edit.html.erb" do
  before(:each) do
    @roster = assign(:roster, stub_model(Roster,
      :new_record? => false,
      :name => "MyString",
      :team_id => 1
    ))
  end

  it "renders the edit roster form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => roster_path(@roster), :method => "post" do
      assert_select "input#roster_name", :name => "roster[name]"
      assert_select "input#roster_team_id", :name => "roster[team_id]"
    end
  end
end
