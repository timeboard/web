require 'spec_helper'

describe "calendar_events/new" do
  before(:each) do
    assign(:calendar_event, stub_model(CalendarEvent,
      :user_id => 1,
      :item_class => "MyString",
      :summary => "MyString",
      :description => "MyText",
      :url => "MyText",
      :repeat_rule => "MyString"
    ).as_new_record)
  end

  it "renders new calendar_event form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", calendar_events_path, "post" do
      assert_select "input#calendar_event_user_id[name=?]", "calendar_event[user_id]"
      assert_select "input#calendar_event_item_class[name=?]", "calendar_event[item_class]"
      assert_select "input#calendar_event_summary[name=?]", "calendar_event[summary]"
      assert_select "textarea#calendar_event_description[name=?]", "calendar_event[description]"
      assert_select "textarea#calendar_event_url[name=?]", "calendar_event[url]"
      assert_select "input#calendar_event_repeat_rule[name=?]", "calendar_event[repeat_rule]"
    end
  end
end
