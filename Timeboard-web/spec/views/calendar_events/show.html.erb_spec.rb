require 'spec_helper'

describe "calendar_events/show" do
  before(:each) do
    @calendar_event = assign(:calendar_event, stub_model(CalendarEvent,
      :user_id => 1,
      :item_class => "Item Class",
      :summary => "Summary",
      :description => "MyText",
      :url => "MyText",
      :repeat_rule => "Repeat Rule"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Item Class/)
    rendered.should match(/Summary/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/Repeat Rule/)
  end
end
