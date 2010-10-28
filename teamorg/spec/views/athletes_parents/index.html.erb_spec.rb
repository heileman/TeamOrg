require 'spec_helper'

describe "athletes_parents/index.html.erb" do
  before(:each) do
    assign(:athletes_parents, [
      stub_model(AthletesParent,
        :athlete_id => 1,
        :person_id => 1
      ),
      stub_model(AthletesParent,
        :athlete_id => 1,
        :person_id => 1
      )
    ])
  end

  it "renders a list of athletes_parents" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
