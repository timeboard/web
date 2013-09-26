require 'spec_helper'

describe "user_connections/show" do
  before(:each) do
    @user_connection = assign(:user_connection, stub_model(UserConnection,
      :user => nil,
      :friend_user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
  end
end
