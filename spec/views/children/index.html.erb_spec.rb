require 'spec_helper'

describe "children/index.html.erb" do
  before(:each) do
    assign(:children, [
      stub_model(Child,
        :name => "Name",
        :gender => "Gender",
        :parent_id => 1
      ),
      stub_model(Child,
        :name => "Name",
        :gender => "Gender",
        :parent_id => 1
      )
    ])
  end

  it "renders a list of children" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Gender".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
