require 'spec_helper'

describe AthletesParentsController do

  def mock_athletes_parent(stubs={})
    (@mock_athletes_parent ||= mock_model(AthletesParent).as_null_object).tap do |athletes_parent|
      athletes_parent.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all athletes_parents as @athletes_parents" do
      AthletesParent.stub(:all) { [mock_athletes_parent] }
      get :index
      assigns(:athletes_parents).should eq([mock_athletes_parent])
    end
  end

  describe "GET show" do
    it "assigns the requested athletes_parent as @athletes_parent" do
      AthletesParent.stub(:find).with("37") { mock_athletes_parent }
      get :show, :id => "37"
      assigns(:athletes_parent).should be(mock_athletes_parent)
    end
  end

  describe "GET new" do
    it "assigns a new athletes_parent as @athletes_parent" do
      AthletesParent.stub(:new) { mock_athletes_parent }
      get :new
      assigns(:athletes_parent).should be(mock_athletes_parent)
    end
  end

  describe "GET edit" do
    it "assigns the requested athletes_parent as @athletes_parent" do
      AthletesParent.stub(:find).with("37") { mock_athletes_parent }
      get :edit, :id => "37"
      assigns(:athletes_parent).should be(mock_athletes_parent)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created athletes_parent as @athletes_parent" do
        AthletesParent.stub(:new).with({'these' => 'params'}) { mock_athletes_parent(:save => true) }
        post :create, :athletes_parent => {'these' => 'params'}
        assigns(:athletes_parent).should be(mock_athletes_parent)
      end

      it "redirects to the created athletes_parent" do
        AthletesParent.stub(:new) { mock_athletes_parent(:save => true) }
        post :create, :athletes_parent => {}
        response.should redirect_to(athletes_parent_url(mock_athletes_parent))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved athletes_parent as @athletes_parent" do
        AthletesParent.stub(:new).with({'these' => 'params'}) { mock_athletes_parent(:save => false) }
        post :create, :athletes_parent => {'these' => 'params'}
        assigns(:athletes_parent).should be(mock_athletes_parent)
      end

      it "re-renders the 'new' template" do
        AthletesParent.stub(:new) { mock_athletes_parent(:save => false) }
        post :create, :athletes_parent => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested athletes_parent" do
        AthletesParent.should_receive(:find).with("37") { mock_athletes_parent }
        mock_athletes_parent.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :athletes_parent => {'these' => 'params'}
      end

      it "assigns the requested athletes_parent as @athletes_parent" do
        AthletesParent.stub(:find) { mock_athletes_parent(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:athletes_parent).should be(mock_athletes_parent)
      end

      it "redirects to the athletes_parent" do
        AthletesParent.stub(:find) { mock_athletes_parent(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(athletes_parent_url(mock_athletes_parent))
      end
    end

    describe "with invalid params" do
      it "assigns the athletes_parent as @athletes_parent" do
        AthletesParent.stub(:find) { mock_athletes_parent(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:athletes_parent).should be(mock_athletes_parent)
      end

      it "re-renders the 'edit' template" do
        AthletesParent.stub(:find) { mock_athletes_parent(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested athletes_parent" do
      AthletesParent.should_receive(:find).with("37") { mock_athletes_parent }
      mock_athletes_parent.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the athletes_parents list" do
      AthletesParent.stub(:find) { mock_athletes_parent }
      delete :destroy, :id => "1"
      response.should redirect_to(athletes_parents_url)
    end
  end

end
