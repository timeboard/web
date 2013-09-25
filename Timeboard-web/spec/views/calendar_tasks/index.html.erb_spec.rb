require 'spec_helper'

describe "calendar_tasks/index" do
  before(:each) do
    assign(:calendar_tasks, [
      stub_model(CalendarTask,
        :user_id => 1,
        :type => "Type",
        :item_class => "Item Class",
        :summary => "Summary",
        :description => "MyText",
        :url => "MyText",
        :repeat_rule => "Repeat Rule"
      ),
      stub_model(CalendarTask,
        :user_id => 1,
        :type => "Type",
        :item_class => "Item Class",
        :summary => "Summary",
        :description => "MyText",
        :url => "MyText",
        :repeat_rule => "Repeat Rule"
      )
    ])
  end

  it "renders a list of calendar_tasks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "Item Class".to_s, :count => 2
    assert_select "tr>td", :text => "Summary".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Repeat Rule".to_s, :count => 2
  end
end
