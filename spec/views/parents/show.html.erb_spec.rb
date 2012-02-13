require 'spec_helper'

describe "parents/show.html.erb" do
  before(:each) do
    @parent = assign(:parent, stub_model(Parent,
      :name => "Name",
      :gender => "Gender"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Gender/)
  end
end
