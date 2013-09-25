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

describe CalendarTasksController do

  # This should return the minimal set of attributes required to create a valid
  # CalendarTask. As you add validations to CalendarTask, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "user_id" => "1" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # CalendarTasksController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all calendar_tasks as @calendar_tasks" do
      calendar_task = CalendarTask.create! valid_attributes
      get :index, {}, valid_session
      assigns(:calendar_tasks).should eq([calendar_task])
    end
  end

  describe "GET show" do
    it "assigns the requested calendar_task as @calendar_task" do
      calendar_task = CalendarTask.create! valid_attributes
      get :show, {:id => calendar_task.to_param}, valid_session
      assigns(:calendar_task).should eq(calendar_task)
    end
  end

  describe "GET new" do
    it "assigns a new calendar_task as @calendar_task" do
      get :new, {}, valid_session
      assigns(:calendar_task).should be_a_new(CalendarTask)
    end
  end

  describe "GET edit" do
    it "assigns the requested calendar_task as @calendar_task" do
      calendar_task = CalendarTask.create! valid_attributes
      get :edit, {:id => calendar_task.to_param}, valid_session
      assigns(:calendar_task).should eq(calendar_task)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new CalendarTask" do
        expect {
          post :create, {:calendar_task => valid_attributes}, valid_session
        }.to change(CalendarTask, :count).by(1)
      end

      it "assigns a newly created calendar_task as @calendar_task" do
        post :create, {:calendar_task => valid_attributes}, valid_session
        assigns(:calendar_task).should be_a(CalendarTask)
        assigns(:calendar_task).should be_persisted
      end

      it "redirects to the created calendar_task" do
        post :create, {:calendar_task => valid_attributes}, valid_session
        response.should redirect_to(CalendarTask.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved calendar_task as @calendar_task" do
        # Trigger the behavior that occurs when invalid params are submitted
        CalendarTask.any_instance.stub(:save).and_return(false)
        post :create, {:calendar_task => { "user_id" => "invalid value" }}, valid_session
        assigns(:calendar_task).should be_a_new(CalendarTask)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        CalendarTask.any_instance.stub(:save).and_return(false)
        post :create, {:calendar_task => { "user_id" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested calendar_task" do
        calendar_task = CalendarTask.create! valid_attributes
        # Assuming there are no other calendar_tasks in the database, this
        # specifies that the CalendarTask created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        CalendarTask.any_instance.should_receive(:update).with({ "user_id" => "1" })
        put :update, {:id => calendar_task.to_param, :calendar_task => { "user_id" => "1" }}, valid_session
      end

      it "assigns the requested calendar_task as @calendar_task" do
        calendar_task = CalendarTask.create! valid_attributes
        put :update, {:id => calendar_task.to_param, :calendar_task => valid_attributes}, valid_session
        assigns(:calendar_task).should eq(calendar_task)
      end

      it "redirects to the calendar_task" do
        calendar_task = CalendarTask.create! valid_attributes
        put :update, {:id => calendar_task.to_param, :calendar_task => valid_attributes}, valid_session
        response.should redirect_to(calendar_task)
      end
    end

    describe "with invalid params" do
      it "assigns the calendar_task as @calendar_task" do
        calendar_task = CalendarTask.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        CalendarTask.any_instance.stub(:save).and_return(false)
        put :update, {:id => calendar_task.to_param, :calendar_task => { "user_id" => "invalid value" }}, valid_session
        assigns(:calendar_task).should eq(calendar_task)
      end

      it "re-renders the 'edit' template" do
        calendar_task = CalendarTask.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        CalendarTask.any_instance.stub(:save).and_return(false)
        put :update, {:id => calendar_task.to_param, :calendar_task => { "user_id" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested calendar_task" do
      calendar_task = CalendarTask.create! valid_attributes
      expect {
        delete :destroy, {:id => calendar_task.to_param}, valid_session
      }.to change(CalendarTask, :count).by(-1)
    end

    it "redirects to the calendar_tasks list" do
      calendar_task = CalendarTask.create! valid_attributes
      delete :destroy, {:id => calendar_task.to_param}, valid_session
      response.should redirect_to(calendar_tasks_url)
    end
  end

end
