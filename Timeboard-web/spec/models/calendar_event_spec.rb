require 'spec_helper'

describe CalendarEvent do
  let(:user) { FactoryGirl.create(:user) }
  before do
    @calendarEvent = user.calendar_events.build(item_class: "business", 
                                               summary: "meeting")
  end

  subject { @calendarEvent}

  it { should respond_to(:item_class) }
  it { should respond_to(:summary) }
  it { should respond_to(:user) }
  its(:user) { should eq user}

  it { should be_valid }

end
