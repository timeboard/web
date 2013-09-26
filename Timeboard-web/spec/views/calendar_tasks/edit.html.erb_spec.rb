require 'spec_helper'

describe "calendar_tasks/edit" do
  before(:each) do
    @calendar_task = assign(:calendar_task, stub_model(CalendarTask,
      :user_id => 1,
      :item_class => "MyString",
      :summary => "MyString",
      :description => "MyText",
      :url => "MyText",
      :repeat_rule => "MyString"
    ))
  end

  it "renders the edit calendar_task form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", calendar_task_path(@calendar_task), "post" do
      assert_select "input#calendar_task_user_id[name=?]", "calendar_task[user_id]"
      assert_select "input#calendar_task_item_class[name=?]", "calendar_task[item_class]"
      assert_select "input#calendar_task_summary[name=?]", "calendar_task[summary]"
      assert_select "textarea#calendar_task_description[name=?]", "calendar_task[description]"
      assert_select "textarea#calendar_task_url[name=?]", "calendar_task[url]"
      assert_select "input#calendar_task_repeat_rule[name=?]", "calendar_task[repeat_rule]"
    end
  end
end
