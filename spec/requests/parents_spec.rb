require 'spec_helper'

describe "Parents" do
  describe "GET /parents" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get parents_path
      response.status.should be(200)
    end
  end
end
