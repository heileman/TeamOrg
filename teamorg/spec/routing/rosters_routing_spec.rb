require "spec_helper"

describe RostersController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/rosters" }.should route_to(:controller => "rosters", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/rosters/new" }.should route_to(:controller => "rosters", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/rosters/1" }.should route_to(:controller => "rosters", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/rosters/1/edit" }.should route_to(:controller => "rosters", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/rosters" }.should route_to(:controller => "rosters", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/rosters/1" }.should route_to(:controller => "rosters", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/rosters/1" }.should route_to(:controller => "rosters", :action => "destroy", :id => "1")
    end

  end
end
