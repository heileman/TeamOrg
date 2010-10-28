require 'spec_helper'

describe "rosters/new.html.erb" do
  before(:each) do
    assign(:roster, stub_model(Roster,
      :name => "MyString",
      :team_id => 1
    ).as_new_record)
  end

  it "renders new roster form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => rosters_path, :method => "post" do
      assert_select "input#roster_name", :name => "roster[name]"
      assert_select "input#roster_team_id", :name => "roster[team_id]"
    end
  end
end
