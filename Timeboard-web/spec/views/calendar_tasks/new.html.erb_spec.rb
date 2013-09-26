require 'spec_helper'

describe "calendar_tasks/new" do
  before(:each) do
    assign(:calendar_task, stub_model(CalendarTask,
      :user_id => 1,
      :item_class => "MyString",
      :summary => "MyString",
      :description => "MyText",
      :url => "MyText",
      :repeat_rule => "MyString"
    ).as_new_record)
  end

  it "renders new calendar_task form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", calendar_tasks_path, "post" do
      assert_select "input#calendar_task_user_id[name=?]", "calendar_task[user_id]"
      assert_select "input#calendar_task_item_class[name=?]", "calendar_task[item_class]"
      assert_select "input#calendar_task_summary[name=?]", "calendar_task[summary]"
      assert_select "textarea#calendar_task_description[name=?]", "calendar_task[description]"
      assert_select "textarea#calendar_task_url[name=?]", "calendar_task[url]"
      assert_select "input#calendar_task_repeat_rule[name=?]", "calendar_task[repeat_rule]"
    end
  end
end
