require 'spec_helper'

describe "athletes_parents/edit.html.erb" do
  before(:each) do
    @athletes_parent = assign(:athletes_parent, stub_model(AthletesParent,
      :new_record? => false,
      :athlete_id => 1,
      :person_id => 1
    ))
  end

  it "renders the edit athletes_parent form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => athletes_parent_path(@athletes_parent), :method => "post" do
      assert_select "input#athletes_parent_athlete_id", :name => "athletes_parent[athlete_id]"
      assert_select "input#athletes_parent_person_id", :name => "athletes_parent[person_id]"
    end
  end
end
