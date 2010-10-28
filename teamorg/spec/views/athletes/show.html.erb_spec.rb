require 'spec_helper'

describe "athletes/show.html.erb" do
  before(:each) do
    @athlete = assign(:athlete, stub_model(Athlete,
      :person_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
