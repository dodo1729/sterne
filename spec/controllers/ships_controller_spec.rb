require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe ShipsController do

  # This should return the minimal set of attributes required to create a valid
  # Ship. As you add validations to Ship, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all ships as @ships" do
      ship = Ship.create! valid_attributes
      get :index
      assigns(:ships).should eq([ship])
    end
  end

  describe "GET show" do
    it "assigns the requested ship as @ship" do
      ship = Ship.create! valid_attributes
      get :show, :id => ship.id.to_s
      assigns(:ship).should eq(ship)
    end
  end

  describe "GET new" do
    it "assigns a new ship as @ship" do
      get :new
      assigns(:ship).should be_a_new(Ship)
    end
  end

  describe "GET edit" do
    it "assigns the requested ship as @ship" do
      ship = Ship.create! valid_attributes
      get :edit, :id => ship.id.to_s
      assigns(:ship).should eq(ship)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Ship" do
        expect {
          post :create, :ship => valid_attributes
        }.to change(Ship, :count).by(1)
      end

      it "assigns a newly created ship as @ship" do
        post :create, :ship => valid_attributes
        assigns(:ship).should be_a(Ship)
        assigns(:ship).should be_persisted
      end

      it "redirects to the created ship" do
        post :create, :ship => valid_attributes
        response.should redirect_to(Ship.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved ship as @ship" do
        # Trigger the behavior that occurs when invalid params are submitted
        Ship.any_instance.stub(:save).and_return(false)
        post :create, :ship => {}
        assigns(:ship).should be_a_new(Ship)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Ship.any_instance.stub(:save).and_return(false)
        post :create, :ship => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested ship" do
        ship = Ship.create! valid_attributes
        # Assuming there are no other ships in the database, this
        # specifies that the Ship created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Ship.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => ship.id, :ship => {'these' => 'params'}
      end

      it "assigns the requested ship as @ship" do
        ship = Ship.create! valid_attributes
        put :update, :id => ship.id, :ship => valid_attributes
        assigns(:ship).should eq(ship)
      end

      it "redirects to the ship" do
        ship = Ship.create! valid_attributes
        put :update, :id => ship.id, :ship => valid_attributes
        response.should redirect_to(ship)
      end
    end

    describe "with invalid params" do
      it "assigns the ship as @ship" do
        ship = Ship.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Ship.any_instance.stub(:save).and_return(false)
        put :update, :id => ship.id.to_s, :ship => {}
        assigns(:ship).should eq(ship)
      end

      it "re-renders the 'edit' template" do
        ship = Ship.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Ship.any_instance.stub(:save).and_return(false)
        put :update, :id => ship.id.to_s, :ship => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested ship" do
      ship = Ship.create! valid_attributes
      expect {
        delete :destroy, :id => ship.id.to_s
      }.to change(Ship, :count).by(-1)
    end

    it "redirects to the ships list" do
      ship = Ship.create! valid_attributes
      delete :destroy, :id => ship.id.to_s
      response.should redirect_to(ships_url)
    end
  end

end
