require 'spec_helper'

describe RostersController do

  def mock_roster(stubs={})
    (@mock_roster ||= mock_model(Roster).as_null_object).tap do |roster|
      roster.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all rosters as @rosters" do
      Roster.stub(:all) { [mock_roster] }
      get :index
      assigns(:rosters).should eq([mock_roster])
    end
  end

  describe "GET show" do
    it "assigns the requested roster as @roster" do
      Roster.stub(:find).with("37") { mock_roster }
      get :show, :id => "37"
      assigns(:roster).should be(mock_roster)
    end
  end

  describe "GET new" do
    it "assigns a new roster as @roster" do
      Roster.stub(:new) { mock_roster }
      get :new
      assigns(:roster).should be(mock_roster)
    end
  end

  describe "GET edit" do
    it "assigns the requested roster as @roster" do
      Roster.stub(:find).with("37") { mock_roster }
      get :edit, :id => "37"
      assigns(:roster).should be(mock_roster)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created roster as @roster" do
        Roster.stub(:new).with({'these' => 'params'}) { mock_roster(:save => true) }
        post :create, :roster => {'these' => 'params'}
        assigns(:roster).should be(mock_roster)
      end

      it "redirects to the created roster" do
        Roster.stub(:new) { mock_roster(:save => true) }
        post :create, :roster => {}
        response.should redirect_to(roster_url(mock_roster))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved roster as @roster" do
        Roster.stub(:new).with({'these' => 'params'}) { mock_roster(:save => false) }
        post :create, :roster => {'these' => 'params'}
        assigns(:roster).should be(mock_roster)
      end

      it "re-renders the 'new' template" do
        Roster.stub(:new) { mock_roster(:save => false) }
        post :create, :roster => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested roster" do
        Roster.should_receive(:find).with("37") { mock_roster }
        mock_roster.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :roster => {'these' => 'params'}
      end

      it "assigns the requested roster as @roster" do
        Roster.stub(:find) { mock_roster(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:roster).should be(mock_roster)
      end

      it "redirects to the roster" do
        Roster.stub(:find) { mock_roster(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(roster_url(mock_roster))
      end
    end

    describe "with invalid params" do
      it "assigns the roster as @roster" do
        Roster.stub(:find) { mock_roster(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:roster).should be(mock_roster)
      end

      it "re-renders the 'edit' template" do
        Roster.stub(:find) { mock_roster(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested roster" do
      Roster.should_receive(:find).with("37") { mock_roster }
      mock_roster.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the rosters list" do
      Roster.stub(:find) { mock_roster }
      delete :destroy, :id => "1"
      response.should redirect_to(rosters_url)
    end
  end

end
