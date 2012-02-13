require 'spec_helper'

describe "children/new.html.erb" do
  before(:each) do
    assign(:child, stub_model(Child,
      :name => "MyString",
      :gender => "MyString",
      :parent_id => 1
    ).as_new_record)
  end

  it "renders new child form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => children_path, :method => "post" do
      assert_select "input#child_name", :name => "child[name]"
      assert_select "input#child_gender", :name => "child[gender]"
      assert_select "input#child_parent_id", :name => "child[parent_id]"
    end
  end
end
