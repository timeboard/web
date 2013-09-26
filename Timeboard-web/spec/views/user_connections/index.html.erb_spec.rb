require 'spec_helper'

describe "user_connections/index" do
  before(:each) do
    assign(:user_connections, [
      stub_model(UserConnection,
        :user => nil,
        :friend_user => nil
      ),
      stub_model(UserConnection,
        :user => nil,
        :friend_user => nil
      )
    ])
  end

  it "renders a list of user_connections" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
