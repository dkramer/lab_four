require 'spec_helper'

describe "parents/new.html.erb" do
  before(:each) do
    assign(:parent, stub_model(Parent,
      :name => "MyString",
      :gender => "MyString"
    ).as_new_record)
  end

  it "renders new parent form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => parents_path, :method => "post" do
      assert_select "input#parent_name", :name => "parent[name]"
      assert_select "input#parent_gender", :name => "parent[gender]"
    end
  end
end
