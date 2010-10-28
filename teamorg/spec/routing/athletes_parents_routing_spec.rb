require "spec_helper"

describe AthletesParentsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/athletes_parents" }.should route_to(:controller => "athletes_parents", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/athletes_parents/new" }.should route_to(:controller => "athletes_parents", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/athletes_parents/1" }.should route_to(:controller => "athletes_parents", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/athletes_parents/1/edit" }.should route_to(:controller => "athletes_parents", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/athletes_parents" }.should route_to(:controller => "athletes_parents", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/athletes_parents/1" }.should route_to(:controller => "athletes_parents", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/athletes_parents/1" }.should route_to(:controller => "athletes_parents", :action => "destroy", :id => "1")
    end

  end
end
