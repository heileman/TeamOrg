require 'spec_helper'

describe "athletes_parents/new.html.erb" do
  before(:each) do
    assign(:athletes_parent, stub_model(AthletesParent,
      :athlete_id => 1,
      :person_id => 1
    ).as_new_record)
  end

  it "renders new athletes_parent form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => athletes_parents_path, :method => "post" do
      assert_select "input#athletes_parent_athlete_id", :name => "athletes_parent[athlete_id]"
      assert_select "input#athletes_parent_person_id", :name => "athletes_parent[person_id]"
    end
  end
end
