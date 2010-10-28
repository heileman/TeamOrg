require 'spec_helper'

describe "athletes/new.html.erb" do
  before(:each) do
    assign(:athlete, stub_model(Athlete,
      :person_id => 1
    ).as_new_record)
  end

  it "renders new athlete form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => athletes_path, :method => "post" do
      assert_select "input#athlete_person_id", :name => "athlete[person_id]"
    end
  end
end
