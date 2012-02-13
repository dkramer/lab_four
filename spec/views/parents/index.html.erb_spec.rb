require 'spec_helper'

describe "parents/index.html.erb" do
  before(:each) do
    assign(:parents, [
      stub_model(Parent,
        :name => "Name",
        :gender => "Gender"
      ),
      stub_model(Parent,
        :name => "Name",
        :gender => "Gender"
      )
    ])
  end

  it "renders a list of parents" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Gender".to_s, :count => 2
  end
end
