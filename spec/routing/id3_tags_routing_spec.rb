require "spec_helper"

describe Id3TagsController do
  describe "routing" do

    it "routes to #index" do
      get("/id3_tags").should route_to("id3_tags#index")
    end

    it "routes to #new" do
      get("/id3_tags/new").should route_to("id3_tags#new")
    end

    it "routes to #show" do
      get("/id3_tags/1").should route_to("id3_tags#show", :id => "1")
    end

    it "routes to #edit" do
      get("/id3_tags/1/edit").should route_to("id3_tags#edit", :id => "1")
    end

    it "routes to #create" do
      post("/id3_tags").should route_to("id3_tags#create")
    end

    it "routes to #update" do
      put("/id3_tags/1").should route_to("id3_tags#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/id3_tags/1").should route_to("id3_tags#destroy", :id => "1")
    end

  end
end
