require 'spec_helper'

describe "user_connections/edit" do
  before(:each) do
    @user_connection = assign(:user_connection, stub_model(UserConnection,
      :user => nil,
      :friend_user => nil
    ))
  end

  it "renders the edit user_connection form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", user_connection_path(@user_connection), "post" do
      assert_select "input#user_connection_user[name=?]", "user_connection[user]"
      assert_select "input#user_connection_friend_user[name=?]", "user_connection[friend_user]"
    end
  end
end
