require "spec_helper"

describe ParentsController do
  describe "routing" do

    it "routes to #index" do
      get("/parents").should route_to("parents#index")
    end

    it "routes to #new" do
      get("/parents/new").should route_to("parents#new")
    end

    it "routes to #show" do
      get("/parents/1").should route_to("parents#show", :id => "1")
    end

    it "routes to #edit" do
      get("/parents/1/edit").should route_to("parents#edit", :id => "1")
    end

    it "routes to #create" do
      post("/parents").should route_to("parents#create")
    end

    it "routes to #update" do
      put("/parents/1").should route_to("parents#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/parents/1").should route_to("parents#destroy", :id => "1")
    end

  end
end
