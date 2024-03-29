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

describe ParentsController do

  # This should return the minimal set of attributes required to create a valid
  # Parent. As you add validations to Parent, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all parents as @parents" do
      parent = Parent.create! valid_attributes
      get :index
      assigns(:parents).should eq([parent])
    end
  end

  describe "GET show" do
    it "assigns the requested parent as @parent" do
      parent = Parent.create! valid_attributes
      get :show, :id => parent.id.to_s
      assigns(:parent).should eq(parent)
    end
  end

  describe "GET new" do
    it "assigns a new parent as @parent" do
      get :new
      assigns(:parent).should be_a_new(Parent)
    end
  end

  describe "GET edit" do
    it "assigns the requested parent as @parent" do
      parent = Parent.create! valid_attributes
      get :edit, :id => parent.id.to_s
      assigns(:parent).should eq(parent)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Parent" do
        expect {
          post :create, :parent => valid_attributes
        }.to change(Parent, :count).by(1)
      end

      it "assigns a newly created parent as @parent" do
        post :create, :parent => valid_attributes
        assigns(:parent).should be_a(Parent)
        assigns(:parent).should be_persisted
      end

      it "redirects to the created parent" do
        post :create, :parent => valid_attributes
        response.should redirect_to(Parent.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved parent as @parent" do
        # Trigger the behavior that occurs when invalid params are submitted
        Parent.any_instance.stub(:save).and_return(false)
        post :create, :parent => {}
        assigns(:parent).should be_a_new(Parent)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Parent.any_instance.stub(:save).and_return(false)
        post :create, :parent => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested parent" do
        parent = Parent.create! valid_attributes
        # Assuming there are no other parents in the database, this
        # specifies that the Parent created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Parent.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => parent.id, :parent => {'these' => 'params'}
      end

      it "assigns the requested parent as @parent" do
        parent = Parent.create! valid_attributes
        put :update, :id => parent.id, :parent => valid_attributes
        assigns(:parent).should eq(parent)
      end

      it "redirects to the parent" do
        parent = Parent.create! valid_attributes
        put :update, :id => parent.id, :parent => valid_attributes
        response.should redirect_to(parent)
      end
    end

    describe "with invalid params" do
      it "assigns the parent as @parent" do
        parent = Parent.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Parent.any_instance.stub(:save).and_return(false)
        put :update, :id => parent.id.to_s, :parent => {}
        assigns(:parent).should eq(parent)
      end

      it "re-renders the 'edit' template" do
        parent = Parent.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Parent.any_instance.stub(:save).and_return(false)
        put :update, :id => parent.id.to_s, :parent => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested parent" do
      parent = Parent.create! valid_attributes
      expect {
        delete :destroy, :id => parent.id.to_s
      }.to change(Parent, :count).by(-1)
    end

    it "redirects to the parents list" do
      parent = Parent.create! valid_attributes
      delete :destroy, :id => parent.id.to_s
      response.should redirect_to(parents_url)
    end
  end

end
