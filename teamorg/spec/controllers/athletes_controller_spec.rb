require 'spec_helper'

describe AthletesController do

  def mock_athlete(stubs={})
    (@mock_athlete ||= mock_model(Athlete).as_null_object).tap do |athlete|
      athlete.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all athletes as @athletes" do
      Athlete.stub(:all) { [mock_athlete] }
      get :index
      assigns(:athletes).should eq([mock_athlete])
    end
  end

  describe "GET show" do
    it "assigns the requested athlete as @athlete" do
      Athlete.stub(:find).with("37") { mock_athlete }
      get :show, :id => "37"
      assigns(:athlete).should be(mock_athlete)
    end
  end

  describe "GET new" do
    it "assigns a new athlete as @athlete" do
      Athlete.stub(:new) { mock_athlete }
      get :new
      assigns(:athlete).should be(mock_athlete)
    end
  end

  describe "GET edit" do
    it "assigns the requested athlete as @athlete" do
      Athlete.stub(:find).with("37") { mock_athlete }
      get :edit, :id => "37"
      assigns(:athlete).should be(mock_athlete)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created athlete as @athlete" do
        Athlete.stub(:new).with({'these' => 'params'}) { mock_athlete(:save => true) }
        post :create, :athlete => {'these' => 'params'}
        assigns(:athlete).should be(mock_athlete)
      end

      it "redirects to the created athlete" do
        Athlete.stub(:new) { mock_athlete(:save => true) }
        post :create, :athlete => {}
        response.should redirect_to(athlete_url(mock_athlete))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved athlete as @athlete" do
        Athlete.stub(:new).with({'these' => 'params'}) { mock_athlete(:save => false) }
        post :create, :athlete => {'these' => 'params'}
        assigns(:athlete).should be(mock_athlete)
      end

      it "re-renders the 'new' template" do
        Athlete.stub(:new) { mock_athlete(:save => false) }
        post :create, :athlete => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested athlete" do
        Athlete.should_receive(:find).with("37") { mock_athlete }
        mock_athlete.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :athlete => {'these' => 'params'}
      end

      it "assigns the requested athlete as @athlete" do
        Athlete.stub(:find) { mock_athlete(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:athlete).should be(mock_athlete)
      end

      it "redirects to the athlete" do
        Athlete.stub(:find) { mock_athlete(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(athlete_url(mock_athlete))
      end
    end

    describe "with invalid params" do
      it "assigns the athlete as @athlete" do
        Athlete.stub(:find) { mock_athlete(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:athlete).should be(mock_athlete)
      end

      it "re-renders the 'edit' template" do
        Athlete.stub(:find) { mock_athlete(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested athlete" do
      Athlete.should_receive(:find).with("37") { mock_athlete }
      mock_athlete.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the athletes list" do
      Athlete.stub(:find) { mock_athlete }
      delete :destroy, :id => "1"
      response.should redirect_to(athletes_url)
    end
  end

end
