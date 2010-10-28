require 'spec_helper'

describe AthletesRostersController do

  def mock_athletes_roster(stubs={})
    (@mock_athletes_roster ||= mock_model(AthletesRoster).as_null_object).tap do |athletes_roster|
      athletes_roster.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all athletes_rosters as @athletes_rosters" do
      AthletesRoster.stub(:all) { [mock_athletes_roster] }
      get :index
      assigns(:athletes_rosters).should eq([mock_athletes_roster])
    end
  end

  describe "GET show" do
    it "assigns the requested athletes_roster as @athletes_roster" do
      AthletesRoster.stub(:find).with("37") { mock_athletes_roster }
      get :show, :id => "37"
      assigns(:athletes_roster).should be(mock_athletes_roster)
    end
  end

  describe "GET new" do
    it "assigns a new athletes_roster as @athletes_roster" do
      AthletesRoster.stub(:new) { mock_athletes_roster }
      get :new
      assigns(:athletes_roster).should be(mock_athletes_roster)
    end
  end

  describe "GET edit" do
    it "assigns the requested athletes_roster as @athletes_roster" do
      AthletesRoster.stub(:find).with("37") { mock_athletes_roster }
      get :edit, :id => "37"
      assigns(:athletes_roster).should be(mock_athletes_roster)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created athletes_roster as @athletes_roster" do
        AthletesRoster.stub(:new).with({'these' => 'params'}) { mock_athletes_roster(:save => true) }
        post :create, :athletes_roster => {'these' => 'params'}
        assigns(:athletes_roster).should be(mock_athletes_roster)
      end

      it "redirects to the created athletes_roster" do
        AthletesRoster.stub(:new) { mock_athletes_roster(:save => true) }
        post :create, :athletes_roster => {}
        response.should redirect_to(athletes_roster_url(mock_athletes_roster))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved athletes_roster as @athletes_roster" do
        AthletesRoster.stub(:new).with({'these' => 'params'}) { mock_athletes_roster(:save => false) }
        post :create, :athletes_roster => {'these' => 'params'}
        assigns(:athletes_roster).should be(mock_athletes_roster)
      end

      it "re-renders the 'new' template" do
        AthletesRoster.stub(:new) { mock_athletes_roster(:save => false) }
        post :create, :athletes_roster => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested athletes_roster" do
        AthletesRoster.should_receive(:find).with("37") { mock_athletes_roster }
        mock_athletes_roster.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :athletes_roster => {'these' => 'params'}
      end

      it "assigns the requested athletes_roster as @athletes_roster" do
        AthletesRoster.stub(:find) { mock_athletes_roster(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:athletes_roster).should be(mock_athletes_roster)
      end

      it "redirects to the athletes_roster" do
        AthletesRoster.stub(:find) { mock_athletes_roster(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(athletes_roster_url(mock_athletes_roster))
      end
    end

    describe "with invalid params" do
      it "assigns the athletes_roster as @athletes_roster" do
        AthletesRoster.stub(:find) { mock_athletes_roster(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:athletes_roster).should be(mock_athletes_roster)
      end

      it "re-renders the 'edit' template" do
        AthletesRoster.stub(:find) { mock_athletes_roster(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested athletes_roster" do
      AthletesRoster.should_receive(:find).with("37") { mock_athletes_roster }
      mock_athletes_roster.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the athletes_rosters list" do
      AthletesRoster.stub(:find) { mock_athletes_roster }
      delete :destroy, :id => "1"
      response.should redirect_to(athletes_rosters_url)
    end
  end

end
