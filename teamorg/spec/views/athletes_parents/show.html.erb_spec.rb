require 'spec_helper'

describe "athletes_parents/show.html.erb" do
  before(:each) do
    @athletes_parent = assign(:athletes_parent, stub_model(AthletesParent,
      :athlete_id => 1,
      :person_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
