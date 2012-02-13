require 'spec_helper'

describe "parents/edit.html.erb" do
  before(:each) do
    @parent = assign(:parent, stub_model(Parent,
      :name => "MyString",
      :gender => "MyString"
    ))
  end

  it "renders the edit parent form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => parents_path(@parent), :method => "post" do
      assert_select "input#parent_name", :name => "parent[name]"
      assert_select "input#parent_gender", :name => "parent[gender]"
    end
  end
end
