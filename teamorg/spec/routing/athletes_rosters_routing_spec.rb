require "spec_helper"

describe AthletesRostersController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/athletes_rosters" }.should route_to(:controller => "athletes_rosters", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/athletes_rosters/new" }.should route_to(:controller => "athletes_rosters", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/athletes_rosters/1" }.should route_to(:controller => "athletes_rosters", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/athletes_rosters/1/edit" }.should route_to(:controller => "athletes_rosters", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/athletes_rosters" }.should route_to(:controller => "athletes_rosters", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/athletes_rosters/1" }.should route_to(:controller => "athletes_rosters", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/athletes_rosters/1" }.should route_to(:controller => "athletes_rosters", :action => "destroy", :id => "1")
    end

  end
end
