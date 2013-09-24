require "spec_helper"

describe CalendarEventsController do
  describe "routing" do

    it "routes to #index" do
      get("/calendar_events").should route_to("calendar_events#index")
    end

    it "routes to #new" do
      get("/calendar_events/new").should route_to("calendar_events#new")
    end

    it "routes to #show" do
      get("/calendar_events/1").should route_to("calendar_events#show", :id => "1")
    end

    it "routes to #edit" do
      get("/calendar_events/1/edit").should route_to("calendar_events#edit", :id => "1")
    end

    it "routes to #create" do
      post("/calendar_events").should route_to("calendar_events#create")
    end

    it "routes to #update" do
      put("/calendar_events/1").should route_to("calendar_events#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/calendar_events/1").should route_to("calendar_events#destroy", :id => "1")
    end

  end
end
