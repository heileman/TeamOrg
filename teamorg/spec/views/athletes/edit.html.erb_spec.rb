require 'spec_helper'

describe "athletes/edit.html.erb" do
  before(:each) do
    @athlete = assign(:athlete, stub_model(Athlete,
      :new_record? => false,
      :person_id => 1
    ))
  end

  it "renders the edit athlete form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => athlete_path(@athlete), :method => "post" do
      assert_select "input#athlete_person_id", :name => "athlete[person_id]"
    end
  end
end
